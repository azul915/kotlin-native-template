#!/bin/bash

if [ -f $SRC/main.kexe ]; then
	rm $SRC/main.kexe
fi

kotlinc-native $SRC/main.kt -o $SRC/main
$SRC/main.kexe

