# Inherit from those products. Most specific first.
$(call inherit-product, $(SRC_TARGET_DIR)/product/core_64_bit.mk)
$(call inherit-product, $(SRC_TARGET_DIR)/product/full_base_telephony.mk)

# Inherit some common stuff.
$(call inherit-product, vendor/lineage/config/common_full_phone.mk)

# Inherit from fog device
$(call inherit-product, device/xiaomi/fog/device.mk)


# Matrixx 
MATRIXX_MAINTAINER := Jackie
MATRIXX_CHIPSET := SM6225
MATRIXX_BATTERY := 5000mah
MATRIXX_DISPLAY := 720X1650

# Gapps
WITH_GMS := true
EXTRA_GAPPS := false

# AOSP Recovery
TARGET_USES_AOSP_RECOVERY := false

# Nuke AudioFX
TARGET_EXCLUDES_AUDIOFX := true

#Blur effect
TARGET_ENABLE_BLUR := false

# Device Config
USE_PIXEL_CHARGING := true
TARGET_FACE_UNLOCK_SUPPORTED := true
TARGET_BOOT_ANIMATION_RES := 720

PRODUCT_NAME := lineage_fog
PRODUCT_DEVICE := fog
PRODUCT_MANUFACTURER := Xiaomi
PRODUCT_BRAND := Redmi
PRODUCT_MODEL := Redmi 10C

PRODUCT_GMS_CLIENTID_BASE := android-xiaomi

BUILD_FINGERPRINT := Redmi/fog_global/fog:13/TKQ1.221114.001/V14.0.3.0.TGEMIXM:user/release-keys
