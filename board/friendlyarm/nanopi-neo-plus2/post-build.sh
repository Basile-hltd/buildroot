#!/bin/sh
BOARD_DIR="$(dirname $0)"

mkimage -C none -A arm64 -T script -d $BOARD_DIR/boot.cmd $BINARIES_DIR/boot.scr
mkimage -f $BOARD_DIR/kernel_fdt.its -E $BINARIES_DIR/kernel_fdt.itb

rm -rf $BOARD_DIR/boot_ext4_dir
mkdir $BOARD_DIR/boot_ext4_dir
cp $BOARD_DIR/kernel_fdt.itb $BOARD_DIR/boot_ext4_dir/
cp $BOARD_DIR/boot.scr $BOARD_DIR/boot_ext4_dir/

dd if=/dev/zero of=$BINARIES_DIR/boot.ext4 bs=1M count=64
mkfs.ext4 -d $BOARD_DIR/boot_ext4_dir -L boot -m 0 $BINARIES_DIR/boot.ext4
