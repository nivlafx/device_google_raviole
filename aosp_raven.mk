# Boot animation
TARGET_BOOT_ANIMATION_RES := 1440

#Face Unlock
TARGET_FACE_UNLOCK_SUPPORTED := true

# Extra Google/Pixel features
TARGET_SUPPORTS_QUICK_TAP := true

# Inherit some common StatiX stuff.
$(call inherit-product, vendor/aosp/config/common_full_phone.mk)
$(call inherit-product, vendor/aosp/config/gsm.mk)

# Inherit device configuration
$(call inherit-product, device/google/raviole/aosp_ravensburger.mk)
$(call inherit-product, device/google/raviole/device-statix.mk)

## Device identifier. This must come after all inclusions
PRODUCT_NAME := aosp_raven
PRODUCT_MODEL := Pixel 6 Pro
PRODUCT_BRAND := google

PRODUCT_VENDOR_PROPERTIES += \
    ro.vendor.uwb.calibration.calibrationpaths=/vendor/etc/calib_paths

PRODUCT_BUILD_PROP_OVERRIDES += \
    PRODUCT_NAME=raven \
    PRIVATE_BUILD_DESC="raven-user 12 SQ3A.220705.003.A1 8672226 release-keys"

BUILD_FINGERPRINT := google/raven/raven:12/SQ3A.220705.003.A1/8672226:user/release-keys

$(call inherit-product, vendor/google/raven/raven-vendor.mk)
