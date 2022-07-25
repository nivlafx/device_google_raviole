#
# Copyright 2018 The Android Open Source Project
#
# Licensed under the Apache License, Version 2.0 (the "License");
# you may not use this file except in compliance with the License.
# You may obtain a copy of the License at
#
#      http://www.apache.org/licenses/LICENSE-2.0
#
# Unless required by applicable law or agreed to in writing, software
# distributed under the License is distributed on an "AS IS" BASIS,
# WITHOUT WARRANTIES OR CONDITIONS OF ANY KIND, either express or implied.
# See the License for the specific language governing permissions and
# limitations under the License.
#

#
# All components inherited here go to system image
#

#Statix
$(call inherit-product, device/google/raviole/device-statix.mk)

#Face Unlock
TARGET_FACE_UNLOCK_SUPPORTED := true

# Extra Google/Pixel features
TARGET_SUPPORTS_QUICK_TAP := true

## Device identifier. This must come after all inclusions
PRODUCT_NAME := aosp_raven
PRODUCT_MODEL := Pixel 6 Pro
PRODUCT_BRAND := google
PRODUCT_DEVICE := raven
PRODUCT_MANUFACTURER := Google

PRODUCT_VENDOR_PROPERTIES += \
    ro.vendor.uwb.calibration.calibrationpaths=/vendor/etc/calib_paths

PRODUCT_BUILD_PROP_OVERRIDES += \
    PRODUCT_NAME=raven \
    PRIVATE_BUILD_DESC="raven-user 12 SQ3A.220705.003.A1 8672226 release-keys"

BUILD_FINGERPRINT := google/raven/raven:12/SQ3A.220705.003.A1/8672226:user/release-keys

$(call inherit-product, vendor/google/raven/raven-vendor.mk)
