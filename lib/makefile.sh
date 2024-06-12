#!/bin/bash

function makethefile() {
	OUTPATH=$1
	TEMP='''
build:
	@clear
	@rm -rf bin
	@echo -e "[*] Make Generation\n"
	@cmake -S . -B bin
	@echo -e "\n[*] Compiling Program\n"
	@cmake --build bin
	@echo -e "\n[+] Task Done!\n"

install:
	@sudo rm -rf bin
	@clear
	@echo -e "[*] Make Generation\n"
	@cmake -S . -B bin
	@echo -e "\n[*] Compiling Program\n"
	@cmake --build bin
	@echo -e "\n[*] Installing Program\n"
	@sudo cmake --install bin
	@echo -e "\n[+] Task Done!\n"

run:
	@clear
	@bin/exe

clean:
	@clear
	@rm -rf bin
	@echo -e "\n[+] Cleaned"
	@echo -e "[+] Task Done!\n"
'''
	echo "$TEMP" > "$OUTPATH"/Makefile;
}
