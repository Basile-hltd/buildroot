#!/bin/sh
BOARD_DIR="$(dirname $0)"

mkimage -C none -A arm64 -T script -d $BOARD_DIR/boot.cmd $BINARIES_DIR/boot.scr
mkimage -f $BOARD_DIR/kernel_fdt.its -E $BINARIES_DIR/kernel_fdt.itb

dd if=/dev/zero of=$BOARD_DIR/boot.img bs=1M count=64
mkfs.ext4 boot.img
mkdir $BOARD_DIR/tmp/mnt
mount -o loop boot.img $BOARD_DIR/tmp/mnt

cp $BINARIES_DIR/kernel_fdt.itb $BOARD_DIR/tmp/mnt
cp $BINARIES_DIR/boot.scr $BOARD_DIR/tmp/mnt

umount $BOARD_DIR/tmp/mnt
mv "$BOARD_DIR/boot.img" "$BINARIES_DIR/boot.ext4"