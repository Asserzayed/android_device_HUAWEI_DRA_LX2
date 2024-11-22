#
# Copyright (C) 2024 The Android Open Source Project
# Copyright (C) 2024 SebaUbuntu's TWRP device tree generator
#
# SPDX-License-Identifier: Apache-2.0
#

# Inherit from those products. Most specific first.
$(call inherit-product, $(SRC_TARGET_DIR)/product/core_64_bit.mk)
$(call inherit-product, $(SRC_TARGET_DIR)/product/full_base_telephony.mk)

# Inherit some common Omni stuff.
$(call inherit-product, vendor/omni/config/common.mk)

# Inherit from HWDRA-M device
$(call inherit-product, device/huawei/HWDRA-M/device.mk)

PRODUCT_DEVICE := HWDRA-M
PRODUCT_NAME := omni_HWDRA-M
PRODUCT_BRAND := HUAWEI
PRODUCT_MODEL := DRA-LX2
PRODUCT_MANUFACTURER := huawei

PRODUCT_GMS_CLIENTID_BASE := android-huawei

PRODUCT_BUILD_PROP_OVERRIDES += \
    PRIVATE_BUILD_DESC="full_dura64-user 8.1.0 O11019 1630404121 release-keys"

BUILD_FINGERPRINT := HUAWEI/DRA-LX2/HWDRA-M:8.1.0/HUAWEIDRA-LX2/1.0.0.181(C185):user/release-keys
