#!/bin/sh
docker run --rm -it -v $PWD:/kernel -w /kernel tinker-build make -j12 zImage dtbs
cp arch/arm/boot/zImage /srv/tftp/tinkeros && cp arch/arm/boot/dts/rk3288-miniarm.dtb /srv/tftp/tinkeros
