#!/bin/sh
BOARD_DIR="$(dirname $0)"

mkimage -C none -A arm64 -T script -d $BOARD_DIR/boot.cmd $BINARIES_DIR/boot.scr
mkimage -f $BOARD_DIR/kernel_fdt.its -E $BINARIES_DIR/kernel_fdt.itb
