#!/bin/sh

# This script is to generate singleimage.bin for Moto G52(rhode) XT2221-1
# tested with Android 12 S1SRS32.38-132-3

# Put gpt.bin bootloader.img programmer.elf in current folder
# execute script with `sh singleimage.sh`
# it will generate singleimage-rhode.bin

bootloaderparts="xbl.elf xbl_config.elf qupfw.elf rpm.mbn tz.mbn hyp.mbn devcfg.mbn prov64.mbn keymaster.mbn storsec.mbn uefi_sec.mbn abl.elf"

rm -vf singleimage-rhode.bin ${bootloaderparts}
./star -f bootloader.img extract ${bootloaderparts}
./star -f singleimage-rhode.bin add index.xml pkg.xml default.xml programmer.elf ${bootloaderparts} gpt.bin
rm -vf ${bootloaderparts}

