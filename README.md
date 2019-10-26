# Edith-Mark-2V2
This is a manual programmer I started working on in June of 2019 and finished on 14.09.2019. I call it "Edith Mark 2V2". This name was inspired by "Edith program" demonstrated by CuriousMarc. "Mark 2V2" means that this the second version of the Mark 2 version of this programmer. This programmer can program an ATmega8A PU or any other AVR microcontroller following AVR Serial Programming Instruction Set and has page size of 32 words. 
To program an AVR microcontroller of a different page size, say for example ATmega32 which has a page size of 64 words, one has to set the variable limit = 64 (for this example) in MARK2V2.C and flash the master microcontroller (ATmega8A) with this code. 
To understand the functioning of this programmer, one should:
1. Go through the Serial Programming section in any AVR microcontroller's datasheet having the prefix "AT". For example: ATtiny13, ATmega8A, ATmega328p (the one used in Arduino Uno boards), etc.
2. Go throught the source code (MARK2V2.C) which is to be flashed onto the master microcontroller (ATmega8A).
3. Look at the circuit diagram which I have attached and understand the connections and functioning of the board.

![image](https://user-images.githubusercontent.com/76907676/112942885-669d6600-914e-11eb-9042-2f355475ca10.png)
Figure 1: Circuit diagram of Edith Mark 2V2

A rough algorithm to program an ATmega8A (or any other AVR microcontroller having a page size of 32 words) is given below:
1. Connect MOSI, MISO, SCK to the pins with the same name on the slave microcontroller.
2. Connect Vcc and GND of slave to 5V and 0V of the complete setup, respectively.
3. Put RESET pin (PC6 on ATmega8A) to negative i.e., 0V.
4. Send program enable instruction.
5. Send chip erase instruction.
6. Load instructions into page until overflow indicator lights up.
7. If overflow indicator lights up, then press Reset and load page to memory.
8. Load more pages in a similar fashion.
9. Afterwards, put Reset of slave to 5V. Your program will now run. 
For more details refer to datasheet of ATmega8A and AVR instruction set.
