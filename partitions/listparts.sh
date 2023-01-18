#!/system/bin/sh

exec > /sdcard/file.txt

disks="sda sdb sdc sdd sde sdf"

for disk in $disks; do
  block=/dev/block/$disk
  echo "## Printing $block info"
  sgdisk --print $block
  echo ===================================================================
  n=$(sgdisk --print $block | grep "Partition table holds up to .* entries" | grep -oE "[0-9]{1,3}")
  for pnum in $(seq 1 $n); do
    sgdisk --info=$pnum $block
    echo ===================================================================
  done
  echo
  echo
  echo
done
