#
# Copyright (C) 2026 The Team Win Recovery Project
#
# SPDX-License-Identifier: Apache-2.0
#

DEVICE_PATH := device/amazon/mt8183-common/athena
DEVICE_ARCH := arm64

# Partitions
BOARD_RECOVERYIMAGE_PARTITION_SIZE := 41943040

# Screen
TARGET_SCREEN_WIDTH := 1280
TARGET_SCREEN_HEIGHT := 800

# TWRP
TW_THEME := landscape_mdpi
TW_ROTATION := 90
TW_INPUT_BLACKLIST := "gpio-privacy-state"

include device/amazon/mt8183-common/BoardConfigCommon.mk
