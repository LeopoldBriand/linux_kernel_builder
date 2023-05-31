# Make linux from scratch
Follow next steps to get a fully functionnal linux

## Make required directories
`./make_file_architecture`

## Compile the kernel
- Download linux archive and open it
- Install dependencies `sudo apt install build-essential`
- Add deb-src URIs in sources.list (in `/etc/apt/sources.list`)
- Update sources `sudo apt update`
- Build dependencies `sudo apt build-dep linux-image-generic`
- Install dependencies `sudo apt install flex bison libssl-dev bc libelf-dev`
- Build config: `make defconfig`
- Build kernel: `make`
- Copy bzImage: `cp arch/x86/boot/bzImage <path_to_project>/OS/bzImage`

## Get tools with busybox
- Download busybox archive and open it
- Remove all defaults: `make allnoconfig`
- Choose your deps: `make menuconfig`
- Build: `make`
- Copy binaries: `./busybox --install -s <path_to_project>/OS/initrd/bin`

## Prepare linux
`./create_bootloader.sh`
`./extern_tools/build_tools.sh`

## Make ISO file
```
cd OS
mkisofs -o rlinux.iso -b isolinux/isolinux.bin -c isolinux/boot.cat -no-emul-boot -boot-load-size 4 -boot-info-table cdboot/
```