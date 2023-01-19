#!/sbin/sh
#
# This script is used to backup critical partitions in Moto G52
#
# Author : HemanthJabalpuri @ XDA
# Date   : 1st January 2023
#

OUTFD=/proc/self/fd/$2

ui_print() {
  if [ -z "$BOOTMODE" ]; then
    echo -e "ui_print $1\nui_print" >> $OUTFD
  else
    echo "$1"
  fi
}
abort() { ui_print "$1"; exit 1; }

if [ -z "$BOOTMODE" ]; then
  ui_print " script executed manually/flashed in recovery instead from Magisk"
  abort() { echo "$1"; exit 1; }
fi

if ! getprop ro.product.device | grep -q rhode; then
  abort " Presently only tested in Moto G52"
fi

bp=/dev/block/by-name
backupdir=/sdcard/backups

[ -d $backupdir ] || mkdir -p $backupdir

for i in $(ls $bp); do
  case $i in
    *_a|*_b|super|userdata) continue;; # these are available in stock ROM zip
    sd*) continue;; # these are LUNs containing all partitions, so skip
    *)
      ui_print "baking up $i"
      dd if=$bp/$i of=$backupdir/${i}.img
    ;;
  esac
done

cd $backupdir
tar -zcvf rhode-backup.tar.gz *.img
cd -
rm -rf $backupdir/*.img

#
# For somereason cmnlib, cmnlib64 are not in bootloader.img
# so backup them
#
#for i in a b; do
#  for j in cmnlib cmnlib64; do
#    dd if=$bp/${j}_$i of=$backupdir/${j}_${i}.img
#  done
#done
#
# After dumping cmnlib, cmnlib64 I found that these are empty
#
