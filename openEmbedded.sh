#!/bin/bash

start()
{
#usage: copy into conf folder and from there:
# $ source openEmbedded && start
	export PATH=$(pwd)/../../sources/poky/bitbake/bin:$PATH
	bitbake jetson-nano-devkit-emmc
}

populate_sdk()
{
	export PATH=$(pwd)/../../sources/poky/bitbake/bin:$PATH
	bitbake jetson-nano-devkit-emmc -c populate_sdk
}

u-boot()
{
	export PATH=$(pwd)/../../sources/poky/bitbake/bin:$PATH
	bitbake u-boot -c menuconfig
}

flash1-RPi()
{
	#https://blog.lazy-evaluation.net/posts/linux/bmaptool.html
	time sudo bmaptool copy /run/media/waldi/4C47-78FE/raspberrypi3-64/core-image-sato-raspberrypi3-64-20221105144918.rootfs.wic.bz2 /dev/sdb
}

flash2-RPi()
{
	#https://blog.lazy-evaluation.net/posts/linux/bmaptool.html
	time ( bzcat /run/media/waldi/4C47-78FE/raspberrypi3-64/core-image-sato-raspberrypi3-64-20221105144918.rootfs.wic.bz2 | sudo dd of=/dev/sdb bs=1M conv=fsync )
}
