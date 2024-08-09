#
# Copyright (C) 2024 The LineageOS Project
#
# SPDX-License-Identifier: Apache-2.0
#

DEVICE_PATH := device/huawei/victoria

# Kernel
TARGET_KERNEL_CONFIG := merge_hi3660_P10_defconfig

# Partitions
# BOARD_BOOTIMAGE_PARTITION_SIZE := 25165824 # /dev/block/mmcblk0p39 # Kernel Partition

# Partitions - dynamic
BOARD_SUPER_PARTITION_BLOCK_DEVICES := cust eng_system eng_vendor odm patch preas preavs product system vendor
BOARD_SUPER_PARTITION_PREAS_DEVICE_SIZE := 310378496 # /dev/block/mmcblk0p60
BOARD_SUPER_PARTITION_PRODUCT_DEVICE_SIZE := 511705088 # /dev/block/mmcblk0p57
BOARD_SUPER_PARTITION_SYSTEM_DEVICE_SIZE := 2860515328 # /dev/block/mmcblk0p59

BOARD_SUPER_PARTITION_SIZE := 5469372416 # The sum of the total sizes of all partitions

# Inherit from hi3660-common
include device/huawei/hi3660-common/BoardConfigCommon.mk

# Display
TARGET_SCREEN_DENSITY := 420

# Properties
TARGET_VENDOR_PROP += $(DEVICE_PATH)/vendor.prop

# Inherit the proprietary files
include vendor/huawei/victoria/BoardConfigVendor.mk
