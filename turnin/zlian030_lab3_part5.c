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
    DDRB = 0xFE; PORTB = 0x01; // Configure port B's 7 pins as outputs, 1 pin as input, initialize to 0s
    DDRD = 0x00; PORTD = 0xFF; // Configure port D's 8 pins as inputs

    unsigned short tmpA = 0x00;
//    unsigned char tmpB = 0x00;
//    unsigned char tmpC = 0x00;

    while (1) {
	tmpA = PIND;
	tmpA = (tmpA << 1) + (PINB & 0x01);
	PORTB = PINB;
	if (tmpA >= 70) {
	    PORTB = PORTB | 0x02;
	}
	else if (tmpA > 5 && tmpA < 70) {
	    PORTB = PORTB | 0x04;
	}
	else {
	    PORTB = PORTB & 0xF9;
	}

    }
    return 1;
}
