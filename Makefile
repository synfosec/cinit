default:
	@echo -e "\n[ ERROR ] - use 'make install' to install\n\nmake install\nmake purge\n"

install:
	@sudo echo -e "[-] This command requires sudo"
	@clear
	@sed -i 's@../lib/banner.sh@/usr/local/lib/libcinit/banner.sh@g' src/cinit
	@sed -i 's@../lib/cmake.sh@/usr/local/lib/libcinit/cmake.sh@g' src/cinit
	@sed -i 's@../lib/c-setup.sh@/usr/local/lib/libcinit/c-setup.sh@g' src/cinit
	@sed -i 's@../lib/makefile.sh@/usr/local/lib/libcinit/makefile.sh@g' src/cinit
	@sudo cp src/cinit /usr/local/bin
	@sudo cp lib /usr/local/lib/libcinit -rf
	@echo -e "[+] Installed CInit\n"


purge:
	@clear
	@sudo echo -e "[-] This command requires sudo"
	@clear
	@sudo rm /usr/local/bin/cinit
	@sudo rm /usr/local/lib/libcinit -rf
	@echo -e "[+] Purged CInit\n"
