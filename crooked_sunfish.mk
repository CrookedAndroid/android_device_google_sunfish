#
# Copyright (C) 2020-2022 Crooked Android Project
#
# SPDX-License-Identifier: Apache-2.0
#

# Inherit some common crooked stuff.
$(call inherit-product, vendor/crooked/config/common.mk)
$(call inherit-product, vendor/crooked/config/gsm.mk)

# Inherit device configuration
$(call inherit-product, device/google/sunfish/aosp_sunfish.mk)

include device/google/sunfish/device-crooked.mk

# Inherit from the common Open Source product configuration
$(call inherit-product, $(SRC_TARGET_DIR)/product/aosp_base_telephony.mk)
$(call inherit-product, $(SRC_TARGET_DIR)/product/core_64_bit.mk)

# Boot animation
TARGET_SCREEN_HEIGHT := 2340
TARGET_SCREEN_WIDTH := 1080

# Device identifier. This must come after all inclusions
PRODUCT_NAME := crooked_sunfish
PRODUCT_DEVICE := sunfish
PRODUCT_BRAND := google
PRODUCT_MODEL := Pixel 4a

PRODUCT_BUILD_PROP_OVERRIDES += \
    PRODUCT_NAME="sunfish" \
    PRIVATE_BUILD_DESC="sunfish-user 12 SQ3A.220605.009.A1 8643238 release-keys"

BUILD_FINGERPRINT := google/sunfish/sunfish:12/SQ3A.220605.009.A1/8643238:user/release-keys

PRODUCT_PROPERTY_OVERRIDES += \
    ro.build.fingerprint=google/sunfish/sunfish:12/SQ3A.220605.009.A1/8643238:user/release-keys

$(call inherit-product, vendor/google/sunfish/sunfish-vendor.mk)

$(call inherit-product-if-exists, vendor/gms/products/gms.mk)

