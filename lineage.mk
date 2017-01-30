$(call inherit-product, device/ZTE/X9180/full_X9180.mk)

# Inherit some common CM stuff.
$(call inherit-product, vendor/cm/config/common_full_phone.mk)

# Inherit from those products. Most specific first.
$(call inherit-product, $(SRC_TARGET_DIR)/product/full_base_telephony.mk)

# Inherit from X9180 device
$(call inherit-product, device/ZTE/X9180/X9180.mk)

PRODUCT_NAME := lineage_X9180
PRODUCT_DEVICE := X9180
PRODUCT_MANUFACTURER := ZTE
PRODUCT_MODEL := X9180

PRODUCT_GMS_CLIENTID_BASE := android-zte

PRODUCT_BRAND := ZTE
TARGET_VENDOR := ZTE
TARGET_VENDOR_PRODUCT_NAME := X9180
TARGET_VENDOR_DEVICE_NAME := X9180
PRODUCT_BUILD_PROP_OVERRIDES += TARGET_DEVICE=X9180 PRODUCT_NAME=X9180

RODUCT_BUILD_PROP_OVERRIDES += \
    BUILD_FINGERPRINT=ZTE/X9180/X9180:6.0.1/MOB31K/zte06210436:user/test-keys \
    PRIVATE_BUILD_DESC="X9180-user 6.0.1 MOB31K eng.cm.20160621.043528 test-keys"
