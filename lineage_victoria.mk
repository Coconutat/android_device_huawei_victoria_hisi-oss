#
# Copyright (C) 2024 The LineageOS Project
#
# SPDX-License-Identifier: Apache-2.0
#

# Inherit from those products. Most specific first.
$(call inherit-product, $(SRC_TARGET_DIR)/product/core_64_bit.mk)
$(call inherit-product, $(SRC_TARGET_DIR)/product/full_base_telephony.mk)
$(call inherit-product, $(SRC_TARGET_DIR)/product/non_ab_device.mk)

# Inherit from victoria device
$(call inherit-product, device/huawei/victoria/device.mk)

# Inherit some common LineageOS stuff.
$(call inherit-product, vendor/lineage/config/common_full_phone.mk)

# Device identifier. This must come after all inclusions
PRODUCT_DEVICE := victoria
PRODUCT_NAME := lineage_victoria
PRODUCT_BRAND := HUAWEI
PRODUCT_MODEL := VTR-AL00
PRODUCT_MANUFACTURER := HUAWEI

PRODUCT_GMS_CLIENTID_BASE := android-huawei

PRODUCT_BUILD_PROP_OVERRIDES += \
    PRIVATE_BUILD_DESC="Victoria-AL00-user 7.0 HUAWEIVictoria-AL00 C00B001 release-keys"

# Set BUILD_FINGERPRINT variable to be picked up by both system and vendor build.prop
BUILD_FINGERPRINT := "HUAWEI/VTR-AL00/HWVTR:9/HUAWEIVTR-AL00/9.1.0.201C00:user/release-keys"
