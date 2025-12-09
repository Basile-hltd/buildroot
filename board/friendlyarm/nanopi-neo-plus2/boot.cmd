setenv bootargs console=ttyS0,115200 earlyprintk root=/dev/mmcblk0p2 rootwait

ext4load mmc 0 0x50000000 kernel_fdt.itb

bootm 0x50000000

