/*	Author: zlian030
 *      Partner(s) Name: Xiaojun He
 *	Lab Section: 021
 *	Assignment: Lab #3  Exercise #1
 *	Exercise Description: [optional - include for your own benefit]
 *
 *	I acknowledge all content contained herein, excluding template or example
 *	code, is my own original work.
 */
#include <avr/io.h>
#ifdef _SIMULATE_
#include "simAVRHeader.h"
#endif

int main(void) {
    DDRA = 0x00; PORTA = 0xFF; // Configure port A's 8 pins as inputs
    DDRB = 0x00; PORTB = 0xFF; // Configure port B's 8 pins as inputs
    DDRC = 0xFF; PORTC = 0x00; // Configure port C's 8 pins as outputs, initialize to 0s
    signed char tmpA = 0x00;
    signed char tmpB = 0x00;
    signed char tmpC = 0x00;
    while (1) {
	tmpA = PINA;
	tmpB = PINB;
	for (unsigned char i = 0x00; i < 0x07; i++) {
	    if (tmpA < 0) {
		tmpC++;
	    }
	    if (tmpB <0) {
		tmpC++;
	    }
	    tmpA = tmpA * 2;
	    tmpB = tmpB * 2;
	}	
	PORTC = tmpC;
    }
    return 1;
}
