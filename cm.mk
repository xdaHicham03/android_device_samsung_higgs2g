# Inherit some common CM stuff.
$(call inherit-product, vendor/cm/config/common_full_phone.mk)

# Inherit device configuration
$(call inherit-product, device/samsung/higgs2g/device.mk)

# Release name
PRODUCT_RELEASE_NAME := SM-G313HU

## Device identifier. This must come after all inclusions
PRODUCT_DEVICE := higgs2g
PRODUCT_NAME := cm_higgs2g
PRODUCT_BRAND := samsung
PRODUCT_MANUFACTURER := samsung
PRODUCT_MODEL := SM-G350E
PRODUCT_CHARACTERISTICS := phone
#CM_VERSION := 11.0

