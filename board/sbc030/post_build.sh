#!/bin/bash

echo 'SBC030 post build script'

out='linux'

cd $1/boot

m68k-linux-objcopy -O binary vmlinux $out.bin
lzop -f -9 $out.bin
mkimage -A m68k -O linux -C lzo -a 0x1000 -d $out.bin.lzo $out.u

rm -f $out.bin $out.bin.lzo vmlinux

