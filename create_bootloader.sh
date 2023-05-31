file OS/bzImage OS/initrd.img
wget https://mirrors.edge.kernel.org/pub/linux/utils/boot/syslinux/syslinux-6.03.tar.gz -qO - | sudo tar -xz syslinux-6.03
cp -r syslinux-6.03/* ../OS/syslinux/
sudo rm -R syslinux-6.03
cp OS/bzImage OS/initrd.img OS/cdboot/
cp OS/syslinux/bios/core/isolinux.bin OS/syslinux/bios/com32/elflink/ldlinux/ldlinux.c32 OS/cdboot/isolinux

