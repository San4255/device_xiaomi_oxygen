#
# Copyright (C) 2017 The LineageOS Project
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

# Inherit from those products. Most specific first.
$(call inherit-product, $(SRC_TARGET_DIR)/product/core_64_bit.mk)
$(call inherit-product, $(SRC_TARGET_DIR)/product/full_base_telephony.mk)

#
# All components inherited here go to system_ext image
#
$(call inherit-product, $(SRC_TARGET_DIR)/product/handheld_system_ext.mk)
$(call inherit-product, $(SRC_TARGET_DIR)/product/telephony_system_ext.mk)

# Inherit from oxygen device
$(call inherit-product, device/xiaomi/oxygen/device.mk)

# Inherit some common lineage stuff.
$(call inherit-product, vendor/lineage/config/common_full_phone.mk)

# Include lineage specific sepolicy
-include device/octavi/sepolicy/qcom/sepolicy.mk

# Bootanimation Resolution
TARGET_BOOT_ANIMATION_RES := 1080

# Custom stuff
TARGET_FACE_UNLOCK_SUPPORTED := true
TARGET_GAPPS_ARCH := arm64
TARGET_FACE_UNLOCK_SUPPORTED := true
TARGET_SUPPORTS_QUICK_TAP := true
TARGET_ENABLE_BLUR := false
WITH_GMS := true

# Todo:
#USE_PIXEL_CHARGER := true

#Build Status
LINEAGE_BUILD_TYPE := Unofficial
LINEAGE_BUILD_MAINTAINER := Ri$an

# Device identifier. This must come after all inclusions
PRODUCT_BRAND := xiaomi
PRODUCT_DEVICE := oxygen
PRODUCT_MANUFACTURER := Xiaomi
PRODUCT_MODEL := mi max 2
PRODUCT_NAME := lineage_oxygen
PRODUCT_SYSTEM_NAME := oxygen

PRODUCT_GMS_CLIENTID_BASE := android-xiaomi

PRODUCT_BUILD_PROP_OVERRIDES += \
    PRIVATE_BUILD_DESC= "oxygen-user 7.1.1 NMF26F V11.0.2.0.NDDMIXM release-keys" \
    TARGET_BUILD_FLAVOR=oxygen-$(TARGET_BUILD_VARIANT) \
    TARGET_PRODUCT=oxygen

# Set BUILD_FINGERPRINT variable to be picked up by both system and vendor build.prop
BUILD_FINGERPRINT := "oxygen-user 7.1.1 NMF26F V11.0.2.0.NDDMIXM release-keys"
