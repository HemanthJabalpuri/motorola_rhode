```
$ ./star
usage: star [options] [<command> [args]]

options:
  -f <filename>                  specify file name of singleimage
                                   (default: singleimage.bin)
  -h                             show help screen
  -v                             show version info

commands:
  add <file list>                add file(s) to singleimage (replace if exists)
  add-as <file> <as>             add with rename
  add-batch <recipe>             add from a pre-defined recipe
  delete <file list>             remove specified file(s) from singleimage
  list                           list file(s) in singleimage
  extract [file list]            extract all or listed file(s) to current
                                 directory

examples:
  # add *.mbn to singleimage.bin
  star add *.mbn

  # add gpt_main0.bin as emmc_gpt_main0.bin
  star add-as gpt_main0.bin emmc_gpt_main0.bin

  # delete pmic.elf
  star delete pmic.elf

  # add from a pre-defined recipe
  star add-batch device/moto/mot8996/singleimage.xml

  # add *.xml *.mbn to my_singleimage.bin 
  star -f my_singleimage.bin add *.xml *.mbn

  # list file(s) in singleimage.bin
  star list

  # extract all file(s) in singleimage.bin to current directory
  star extract
$ ./star -v
Motorola singleimage tar utility version 0.1.1
```
