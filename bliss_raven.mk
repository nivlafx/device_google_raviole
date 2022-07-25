#
# Copyright (C) 2020-2021 BlissRoms Project
#
# SPDX-License-Identifier: Apache-2.0
#

# Inherit some common BlissRoms stuff.
$(call inherit-product, vendor/bliss/config/common_full_phone.mk)

# Inherit device configuration
$(call inherit-product, device/google/raviole/aosp_raven.mk)

$(call inherit-product, device/google/gs101/aosp_common.mk)
$(call inherit-product, device/google/raviole/device-raven.mk)

PRODUCT_NAME := bliss_raven
PRODUCT_MODEL := Pixel 6 Pro
PRODUCT_BRAND := google

# Boot animation
TARGET_SCREEN_HEIGHT := 3120
TARGET_SCREEN_WIDTH := 1440
TARGET_BOOT_ANIMATION_RES := 1440

$(call inherit-product, vendor/google/raven/raven-vendor.mk)
