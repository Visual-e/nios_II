/*
 * main.c
 *
 *  Created on: 19 февр. 2016 г.
 *      Author: Visuale
 */
#include <stdio.h>
#include "system.h"
#include "altera_avalon_pio_regs.h"

typedef struct
{
    char value[8];
} BCD_Number;

BCD_Number bin2bcd(int bin_number)
{
    BCD_Number bcd_number;
    int i;

    for(i = 0; i < sizeof(bcd_number.value); i++)
    {
        bcd_number.value[i] = bin_number % 10;
        bin_number /= 10;
    }

    return bcd_number;
}

int main ()
{
	BCD_Number bcd_number;
    unsigned long port;
    unsigned int cnt=1;
    int i;

    while(1)
    {
        IOWR_ALTERA_AVALON_PIO_DATA(PIO_0_BASE, port);
        for (i=0; i<(ALT_CPU_CPU_FREQ/5000); i++);

        cnt = (cnt >= 0xFFFF) ? 1u : (cnt+1);
        bcd_number=bin2bcd(cnt);
        port =  bcd_number.value[7]<<28 | bcd_number.value[6]<<24 |
        		bcd_number.value[5]<<20 | bcd_number.value[4]<<16 |
        		bcd_number.value[3]<<12 | bcd_number.value[2]<<8 |
        		bcd_number.value[1]<<4 | bcd_number.value[0];
    }
    return 0;
}
