#include <avr/io.h>

void main() {
	DDRB = _BV(PB0);
	OCR0A = 0;
	TCCR0A = _BV(WGM01) | _BV(COM0A0);
	TCCR0B = _BV(CS02);
	
	ADMUX = 1 | _BV(ADLAR);
	ADCSRA = _BV(ADEN);
	while(1) {
		ADCSRA |= _BV(ADSC);
		while(ADCSRA & _BV(ADSC)){
		}
		unsigned char t = ADCH;
		OCR0A = t >> 2;
	}
}