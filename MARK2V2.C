/*
CREATED ON 13.09.2019
CREATED BY P.K.
MODIFIED ON 13.09.2019
*/

/*
	EDITH MARK 2 V2 "MARK2V2.C"
	2 bytes are sent to the slave during serial programming in one go. The transfer function is modified to use PINC instead of PORTB. No display counter is there, except for a page overfill LED. 
	> PORTB reads the instruction low byte. 
	> PORTD reads the instruction high byte.
	High byte is sent first and then low byte is sent in Raw mode.
	Low byte is sent, then high byte is sent, and address counter is managed in Instruction mode.
        PORTD -> LEFT DIP SWITCHES -> HIGH BYTE
        PORTB -> RIGHT DIP SWITCHES -> LOW BYTE
	PC0 -> OUTPUT : MOSI 
	PC1 -> OUTPUT : SCK
	PC2 -> INPUT : SEND RAW WORD
	PC3 -> INPUT : SEND INSTRUCTION
	PC4 -> INPUT : ADDRESS COUNTER RESET
	PC5 -> OUTPUT : ADDRESS COUNTER OVERFLOW (== 31)
*/




//------------------------------------------------------------------------------

#undef F_CPU
#define F_CPU 1000000UL

#include<avr/io.h>
#include<util/delay.h>

#define HIGH 1
#define LOW 0
#define PIN_MOSI PORTB0
#define PIN_MISO PINC1
#define PIN_SCK PORTB1

uint8_t transfer(uint8_t);

int main()
{
	//INITIALIZATION SECTION
	uint8_t HIGH_BYTE, LOW_BYTE, address_counter = 0x00, limit = 32;
	limit = limit - 1;
															/*
															*HIGH_BYTE : Stores the 8 bit integer which is the value of PORTD register
															*LOW_BYTE : Stores the 8 bit integer which is the value of PORTB register
															*address_counter : Counts the number of instructions that have been sent to the
																			   slave microcontroller. Range is from 0 - limit. Value above limit 
																			   halts the programmer.
															*limit : Stores the page size of a microcontroller's memory. 
																	 For ATmega8A, limit = 31 (max. number of words in a page are 32).
																	 For ATmega16, limit = 63  (max. number of words in a page are 64).
															*/
	
	DDRB = 0x00;            								//low byte input pins
	PORTB = 0xFF;           								//enable pull-up resistors
	DDRD = 0x00;            								//high byte input pins
	PORTD = 0xFF;           								//enable pull-up resistors
	DDRC = 0b00100011;										//depends... At present selected on the basis of circuit design
	PORTC = 0x00;											//disable pull up resistors (schmitt trigger input - inverter). All outputs OFF
	
	//INFINITE LOOP SECTION
	for(;;)
	{
		HIGH_BYTE = PIND;
		LOW_BYTE = PINB;
		if(bit_is_set(PINC, PC2))
		{
			transfer(HIGH_BYTE);
			_delay_ms(50);
			transfer(LOW_BYTE);
		}
		else if(bit_is_set(PINC, PC3))
		{
			//send instruction low byte
			transfer(0b01000000);   						//load program memory page(lpmp) byte 1
			transfer(0b00000000);   						//lpmp byte 2
			transfer(address_counter);    					//lpmp byte 3
			transfer(LOW_BYTE);           					//lpmp byte 4
			_delay_ms(50);
			//send instruction  high byte
			transfer(0b01001000); 		 					//lpmp byte 1
			transfer(0b00000000);  							//lpmp byte 2
			transfer(address_counter);   					//lpmp byte 3
			transfer(HIGH_BYTE);         					//lpmp byte 4
			_delay_ms(50);
			if(address_counter == limit)   					//halting condition. Prevents writing more than (limit + 1) instructions in one page
			{
				for(;;)
				{
					PORTC |= (1<<PC5);
					PORTC &= (0<<PC5);
					if(bit_is_set(PINC, PC4))
					{
						address_counter = 0x00;
						break;
					}
				}
			}
			else
				++address_counter;
			}
	}
	
	return 0;
}


/*
*
*FUNCTION NAME: transfer(uint8_t)
*INPUT: b
*OUTPUT: PORTC
*LOGIC: This function acts like a PISO shift register. Using left shift operator
*it allows us to send signals to SCK and MOSI pins of the slave microcontroller
*EXAMPLE CALL: transfer(255);
*
*/

uint8_t transfer (uint8_t b) 
{
    for (unsigned int i = 0; i < 8; ++i) 
    {
	    PORTC |= (((b & 0x80) ? HIGH : LOW) << 0); 			//compares 8th bit of b with 80h. Shifts this by 0 places i.e. MOSI
		_delay_ms(10);
		PORTC |= (HIGH << 1); 								//Pulls SCK of slave high
		_delay_ms(10);
		b = (b << 1);       								//shifts value of b by 1 place/bit.
		PORTC &= (LOW << 1); 								//PULLS SCK LOW
		_delay_ms(10);
		PORTC = 0x00;       								//PULLS all pins of PORTC LOW
    }
    PORTC |= (1 << PC5);             	 					//Pulls PC5 high
    _delay_ms(50);
    PORTC &= (0 << PC5);              						//Pulls PC5 low
    return b;                       						//returns 0 , as all bits have been 
                                                            //shifted leaving the register empty
}