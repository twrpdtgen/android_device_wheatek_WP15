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

# Inherit from WP15 device
$(call inherit-product, device/wheatek/WP15/device.mk)

PRODUCT_DEVICE := WP15
PRODUCT_NAME := omni_WP15
PRODUCT_BRAND := OUKITEL
PRODUCT_MODEL := WP15
PRODUCT_MANUFACTURER := wheatek

PRODUCT_GMS_CLIENTID_BASE := android-wheatek

PRODUCT_BUILD_PROP_OVERRIDES += \
    PRIVATE_BUILD_DESC="WP15_RU-user 11 RP1A.200720.011 1653633312 release-keys"

BUILD_FINGERPRINT := OUKITEL/WP15_RU/WP15:11/RP1A.200720.011/1653633312:user/release-keys
