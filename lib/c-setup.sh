#!/bin/bash

function generate_c() {
	OUTPATH=$1;
	TEMP_h='''
#ifndef SET_H
#define SET_H

#include <stdio.h>
#include <stdlib.h>
#include <stdint.h>
#include <string.h>
#include <unistd.h>
#define RET ret(0)

void ret(uint8_t status) {
	exit(status);
}

#endif
'''

	TEMP_c='''
#include "set.h"

int main(void) {
	// happy coding in c :>


	RET;
}
'''

	echo "$TEMP_h" > "$OUTPATH/src/set.h"
	echo "$TEMP_c" > "$OUTPATH/src/main.c"
}
