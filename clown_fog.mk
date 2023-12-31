#
# Copyright (C) 2022 The LineageOS Project
#
# SPDX-License-Identifier: Apache-2.0
#

# Inherit from those products. Most specific first.
$(call inherit-product, $(SRC_TARGET_DIR)/product/core_64_bit.mk)
$(call inherit-product, $(SRC_TARGET_DIR)/product/full_base_telephony.mk)
$(call inherit-product, $(SRC_TARGET_DIR)/product/languages_full.mk)

# Inherit some common Clown stuff.
$(call inherit-product, vendor/clown/config/common.mk)

# Inherit from fog device
$(call inherit-product, device/xiaomi/fog/device.mk)

# Device configs
TARGET_BOOT_ANIMATION_RES := 720

#Face Unlock
TARGET_FACE_UNLOCK_SUPPORTED := true

# Clown configs
CLOWN_MAINTAINER := Katze_as_a_Jackie

#GMS Settings
WITH_GAPPS := true
TARGET_INCLUDE_STOCK_ARCORE := true
TARGET_SUPPORTS_QUICK_TAP := true
TARGET_SUPPORTS_GOOGLE_RECORDER := true
TARGET_INCLUDE_LIVE_WALLPAPERS := true

PRODUCT_NAME := clown_fog
PRODUCT_DEVICE := fog
PRODUCT_MANUFACTURER := Xiaomi
PRODUCT_BRAND := Redmi
PRODUCT_MODEL := Redmi 10C

PRODUCT_GMS_CLIENTID_BASE := android-xiaomi

BUILD_FINGERPRINT := Redmi/fog_global/fog:13/TKQ1.221114.001/V14.0.3.0.TGEMIXM:user/release-keys
