ifeq (rock64,$(BOARD_TARGET))

UBOOT_DEFCONFIG ?= rock64-rk3328_defconfig
BL31 ?= tmp/atf/rk3328/22d12c4148c373932a7a81e5d1c59a767e143ac2.elf
BOARD_CHIP ?= rk3328
ifneq (,$(FLASH_SPI))
LOADER_BIN ?= tmp/rkbin/rk33/rk3328_loader_v1.08.244_for_spi_nor_build_Aug_7_2017.bin
else
LOADER_BIN ?= tmp/rkbin/rk33/rk3328_loader_ddr333_v1.08.244.bin
endif
IMAGES ?= flash-spi erase-spi
LOADERS ?= rksd_loader

else ifeq (rockpro64,$(BOARD_TARGET))

UBOOT_DEFCONFIG ?= rockpro64-rk3399_defconfig
BL31 ?= tmp/atf/rk3399/22d12c4148c373932a7a81e5d1c59a767e143ac2.elf
BOARD_CHIP ?= rk3399
LOADER_BIN ?= tmp/rkbin/rk33/rk3399_loader_v1.10.112_support_1CS.bin
USE_SEPARATE_SPIFLASH ?= true
IMAGES ?= flash-spi erase-spi
LOADERS ?= rksd_loader rkspi_loader

else ifeq (rockpi4b,$(BOARD_TARGET))

UBOOT_DEFCONFIG ?= rock-pi-4-rk3399_defconfig
BL31 ?= tmp/atf/rk3399/22d12c4148c373932a7a81e5d1c59a767e143ac2.elf
BOARD_CHIP ?= rk3399
LOADER_BIN ?= tmp/rkbin/rk33/rk3399_loader_v1.10.112_support_1CS.bin
USE_SEPARATE_SPIFLASH ?= true
IMAGES ?= flash-spi erase-spi
LOADERS ?= rksd_loader rkspi_loader

else ifeq (pinebookpro,$(BOARD_TARGET))

UBOOT_DEFCONFIG ?= pinebook_pro-rk3399_defconfig
BL31 ?= tmp/atf/rk3399/22d12c4148c373932a7a81e5d1c59a767e143ac2.elf
BOARD_CHIP ?= rk3399
LOADER_BIN ?= tmp/rkbin/rk33/rk3399_loader_v1.10.112_support_1CS.bin
USE_SEPARATE_SPIFLASH ?= true
IMAGES ?= flash-spi erase-spi
LOADERS ?= rksd_loader rkspi_loader

else
$(error Unsupported BOARD_TARGET)
endif