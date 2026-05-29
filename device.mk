define Device/netcore_n30pro
  DEVICE_VENDOR := Netcore
  DEVICE_MODEL := N30PRO
  DEVICE_ALT0_VENDOR := netis
  DEVICE_ALT0_MODEL := NX35U
  DEVICE_DTS := mt7981b-netcore-n30pro
  DEVICE_DTS_DIR := ../dts
  DEVICE_DTC_FLAGS := --pad 4096
  DEVICE_DTS_LOADADDR := 0x43f00000
  DEVICE_PACKAGES := kmod-mt7915e kmod-mt7981-firmware mt7981-wo-firmware kmod-usb3 kmod-usb-ledtrig-usbport
  KERNEL_LOADADDR := 0x44000000
  KERNEL := kernel-bin | gzip
  KERNEL_INITRAMFS := kernel-bin | lzma | fit lzma $$(KDIR)/image-$$(firstword $$(DEVICE_DTS)).dtb with-initrd | pad-to 64k
  KERNEL_INITRAMFS_SUFFIX := .itb
  KERNEL_IN_UBI := 1
  UBOOTENV_IN_UBI := 1
  IMAGES := sysupgrade.bin
  IMAGE_SIZE := 117248k
  IMAGE/sysupgrade.bin := append-kernel | fit gzip $$(KDIR)/image-$$(firstword $$(DEVICE_DTS)).dtb external-with-rootfs | pad-rootfs | append-metadata
  ARTIFACTS := spim-nand-preloader.bin spim-nand-bl31-uboot.fip
  ARTIFACT/spim-nand-preloader.bin	:= mt7981-bl2 spim-nand-ddr3
  ARTIFACT/spim-nand-bl31-uboot.fip	:= mt7981-bl31-uboot netcore_n30pro
endef
TARGET_DEVICES += netcore_n30pro
