#include <reg51.h>
#define uchar unsigned char
#define uint unsigned int

sbit pin1 = P1^0;  // Connect pin1 to P1.0
sbit pin2 = P1^1;  // Connect pin2 to P1.1

void timer0_init()
{
  TMOD |= 0x01;  // Set timer0 to mode 1 (16-bit timer)
  TH0 = 0xFC;  // Set the high byte of the initial timer value
  TL0 = 0x67;  // Set the low byte of the initial timer value
  TR0 = 1;  // Start timer0
}

void timer1_init()
{
  TMOD |= 0x10;  // Set timer1 to mode 1 (16-bit timer)
  TH1 = 0x4B;  // Set the high byte of the initial timer value
  TL1 = 0xE2;  // Set the low byte of the initial timer value
  TR1 = 1;  // Start timer1
}

void main()
{
  timer0_init();  // Initialize timer0
  timer1_init();  // Initialize timer1

  while(1)
  {
    if(TF0 == 1)  // If timer0 overflows
    {
      pin1 = ~pin1;  // Toggle pin1
      TF0 = 0;  // Clear timer0 overflow flag
    }
    if(TF1 == 1)  // If timer1 overflows
    {
      pin2 = ~pin2;  // Toggle pin2
      TF1 = 0;  // Clear timer1 overflow flag
    }
  }
}
