#
# Copyright (C) 2026 The Team Win Recovery Project
#
# SPDX-License-Identifier: Apache-2.0
#

DEVICE_PATH := device/amazon/mt8183-common/trona
DEVICE_ARCH := arm64

# Partitions
BOARD_RECOVERYIMAGE_PARTITION_SIZE := 42958848

# Screen
TARGET_SCREEN_WIDTH := 1200
TARGET_SCREEN_HEIGHT := 1920

# TWRP
TW_THEME := portrait_hdpi

include device/amazon/mt8183-common/BoardConfigCommon.mk
