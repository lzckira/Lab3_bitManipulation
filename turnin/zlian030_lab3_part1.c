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
    unsigned char tmpA = 0x00;
    unsigned char tmpB = 0x00;
    unsigned char tmpC = 0x00;
    unsigned char mask = 0x01;
    while (1) {
	tmpA = PINA;
	tmpB = PINB;
	tmpC = 0x00;
	mask = 0x01;
	unsigned char i = 0;
	while (i < 8) {
	    if ((tmpA & mask) != 0) {
		tmpC = tmpC + 0x01;
	    }

	    if ((tmpB & mask) != 0) {
		tmpC = tmpC + 0x01;
	    }

	    mask = mask * 2;
	    i++;
	}	
	PORTC = tmpC;
    }
    return 1;
}
