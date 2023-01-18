```
$ ./qboot
usage: qboot [ <option> ] <command>

commands:
  devices                        list connected devices
  blank-flash [ <singleimage> ]] blank flash a device

options:
  -p <port>, --port=<port>  specify device port
                            This is needed only when the program does not detect
                            the device automatically or when multiple devices in
                            blank flash mode are connected

                            Set --port to be the full or any unambiguous part of
                            a device pathname. For example:
                            --port=100
                            --port=COM100
                            --port=ttyUSB3
                            --port=/dev/ttyUSB3
                            --port=/dev/tty.usbtoserial
  --debug[=<level>]         enable debugging
                            1(default): show debug messages
                            2: also dump raw packets
  -i, --interactive         run in interactive mode
  -h, --help                show help screen
  -v, --version             show version info

examples:
  qboot devices             list all connected devices
  qboot blank-flash         blank flash device
$ ./qboot -v
Motorola qboot utility version 3.86
```
