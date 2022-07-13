#
# Copyright (C) 2021 The LineageOS Project
#
# SPDX-License-Identifier: Apache-2.0
#

# Inherit from those products. Most specific first.
$(call inherit-product, $(SRC_TARGET_DIR)/product/core_64_bit.mk)
$(call inherit-product, $(SRC_TARGET_DIR)/product/full_base_telephony.mk)

# Inherit from sweet device
$(call inherit-product, device/xiaomi/sweet/device.mk)

# Inherit some common Project Arcana stuff.
$(call inherit-product, vendor/aosp/config/common.mk)
TARGET_GAPPS_ARCH := arm64
TARGET_BOOT_ANIMATION_RES := 1080

# maintainer flag
ARCANA_MAINTAINER := aarav and shubham
WITH_GAPPS := true
TARGET_SUPPORTS_BLUR := true
TARGET_BUILD_GRAPHENEOS_CAMERA := true
TARGET_SUPPORTS_QUICK_TAP := true
USE_PIXEL_CHARGER_IMAGES := true
TARGET_SUPPORTS_NOW_PLAYING := true
TARGET_FACE_UNLOCK_SUPPORTED := true
# Device identifier. This must come after all inclusions.
PRODUCT_NAME := aosp_sweet

PRODUCT_DEVICE := sweet
PRODUCT_BRAND := Xiaomi
PRODUCT_MODEL := Redmi Note 10 Pro
PRODUCT_MANUFACTURER := Xiaomi

PRODUCT_GMS_CLIENTID_BASE := android-xiaomi

