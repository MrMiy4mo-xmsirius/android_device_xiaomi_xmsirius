#
# Copyright (C) 2022 The LineageOS Project
#
# SPDX-License-Identifier: Apache-2.0
#

# Inherit from sdm710-common
include device/xiaomi/sdm710-common/BoardConfigCommon.mk

DEVICE_PATH := device/xiaomi/xmsirius

BUILD_BROKEN_DUP_RULES := true

# Display
TARGET_SCREEN_DENSITY := 440

# Partitions
BOARD_DTBOIMG_PARTITION_SIZE := 8388608
BOARD_SUPER_PARTITION_SYSTEM_DEVICE_SIZE := 3221225472
BOARD_SUPER_PARTITION_VENDOR_DEVICE_SIZE := 3221225472
BOARD_SUPER_PARTITION_CUST_DEVICE_SIZE := 872415232

# Kernel
TARGET_KERNEL_CONFIG += xiaomi/sirius.config

# Properties
TARGET_VENDOR_PROP += $(DEVICE_PATH)/vendor.prop

# VINTF
DEVICE_MANIFEST_FILE += $(DEVICE_PATH)/manifest.xml

# Inherit from the proprietary version
include vendor/xiaomi/xmsirius/BoardConfigVendor.mk
