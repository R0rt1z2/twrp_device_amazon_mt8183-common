#
# Copyright (C) 2026 The Team Win Recovery Project
#
# SPDX-License-Identifier: Apache-2.0
#

DEVICE_PATH := device/amazon/mt8183-common/athena
DEVICE_ARCH := arm

# Kernel
BOARD_KERNEL_CMDLINE := bootopt=64S3,32S1,32S1
BOARD_KERNEL_OFFSET := 0x00008000
DEVICE_KERNEL_IMAGE := zImage-dtb

# Partitions
BOARD_RECOVERYIMAGE_PARTITION_SIZE := 41943040

# Screen
TARGET_SCREEN_WIDTH := 1280
TARGET_SCREEN_HEIGHT := 800

# TWRP
TW_THEME := landscape_mdpi
TW_ROTATION := 90

include device/amazon/mt8183-common/BoardConfigCommon.mk
