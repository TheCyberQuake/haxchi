.PHONY := all code550.bin

all: brainage kirby yoshids brainage.zip kirby.zip yoshids.zip brainage_cfw.zip kirby_cfw.zip yoshids_cfw.zip

brainage: setup_brainage brainage.nds setup_brainage_cfw brainage_cfw.nds

kirby: setup_kirby kirby.nds setup_kirby_cfw kirby_cfw.nds

yoshids: setup_yoshids yoshids.nds setup_yoshids_cfw yoshids_cfw.nds

setup_brainage:
	rm -f *.bin
	@cd hbl_loader && make && cd ..
	@cp -f brainage_defs.s defines.s

setup_kirby:
	rm -f *.bin
	@cd hbl_loader && make && cd ..
	@cp -f kirby_defs.s defines.s

setup_yoshids:
	rm -f *.bin
	@cd hbl_loader && make && cd ..
	@cp -f yoshids_defs.s defines.s

setup_brainage_cfw:
	rm -f *.bin
	@cd cfw_booter && make && cd ..
	@cp -f brainage_defs.s defines.s

setup_kirby_cfw:
	rm -f *.bin
	@cd cfw_booter && make && cd ..
	@cp -f kirby_defs.s defines.s

setup_yoshids_cfw:
	rm -f *.bin
	@cd cfw_booter && make && cd ..
	@cp -f yoshids_defs.s defines.s

brainage.nds:
	armips haxchi_rop.s
	armips haxchi.s
	mv rom.nds brainage.nds

kirby.nds:
	armips haxchi_rop.s
	armips haxchi.s
	mv rom.nds kirby.nds

yoshids.nds:
	armips haxchi_rop.s
	armips haxchi.s
	mv rom.nds yoshids.nds

brainage_cfw.nds:
	armips haxchi_rop.s
	armips haxchi.s
	mv rom.nds brainage_cfw.nds

kirby_cfw.nds:
	armips haxchi_rop.s
	armips haxchi.s
	mv rom.nds kirby_cfw.nds

yoshids_cfw.nds:
	armips haxchi_rop.s
	armips haxchi.s
	mv rom.nds yoshids_cfw.nds

brainage.zip:
	zip -JXjq9 brainage.zip brainage.nds

kirby.zip:
	zip -JXjq9 kirby.zip kirby.nds

yoshids.zip:
	zip -JXjq9 yoshids.zip yoshids.nds

brainage_cfw.zip:
	zip -JXjq9 brainage_cfw.zip brainage_cfw.nds

kirby_cfw.zip:
	zip -JXjq9 kirby_cfw.zip kirby_cfw.nds

yoshids_cfw.zip:
	zip -JXjq9 yoshids_cfw.zip yoshids_cfw.nds

clean:
	@rm -f *.bin defines.s brainage.nds brainage.zip kirby.nds kirby.zip yoshids.nds yoshids.zip
	@rm -f brainage_cfw.nds brainage_cfw.zip kirby_cfw.nds kirby_cfw.zip yoshids_cfw.nds yoshids_cfw.zip
	@cd cfw_booter && make clean && cd ..
	@cd hbl_loader && make clean && cd ..
	@echo "all cleaned up !"
