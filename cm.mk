## Specify phone tech before including full_phone
#$(call inherit-product, vendor/cm/config/cdma.mk)

# Release name
PRODUCT_RELEASE_NAME := coeus

# Inherit some common CM stuff.
$(call inherit-product, vendor/cm/config/common_full_phone.mk)

# Inherit device configuration
$(call inherit-product, device/zte/coeus/full_coeus.mk)

## Device identifier. This must come after all inclusions
PRODUCT_DEVICE := coeus
PRODUCT_NAME := cm_coeus
PRODUCT_BRAND := zte
PRODUCT_MODEL := coeus
PRODUCT_MANUFACTURER := zte
