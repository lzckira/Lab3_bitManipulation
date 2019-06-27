/*	Author: zlian030
 *      Partner(s) Name: Xiaojun He
 *	Lab Section: 021
 *	Assignment: Lab #3  Exercise #4
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

    DDRB = 0xFF; PORTB = 0x00; // Configure port B's 8 pins as outputs, initialize to 0s
    DDRC = 0xFF; PORTC = 0x00; // Configure port C's 8 pins as outputs, initialize to 0s

    unsigned char tmpA = 0x00;
    unsigned char tmpB = 0x00;
    unsigned char tmpC = 0x00;

    while (1) {
	tmpA = PINA;
	if ((tmpA & 0x80) != 0) {
	    tmpB = tmpB | 0x08;
	}

        if ((tmpA & 0x40) != 0) {
            tmpB = tmpB | 0x04;
        }

        if ((tmpA & 0x20) != 0) {
            tmpB = tmpB | 0x02;
        }

        if ((tmpA & 0x10) != 0) {
            tmpB = tmpB | 0x01;
        }

	tmpC = tmpA << 4;
	PORTC = tmpC;
	tmpC = 0x00;

	PORTB = tmpB;	
	tmpB = 0x00;
    }
    return 1;
}
