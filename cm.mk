# coeus vendor blobs
$(call inherit-product-if-exists, device/zte/coeus/coeus-vendor-blobs.mk)

# msm8x30 common vendor blobs
$(call inherit-product-if-exists, device/zte/coeus/coeus-vendor-blobs.mk)

# Inherit some common CM stuff.
$(call inherit-product, vendor/cm/config/common_full_phone.mk)

$(call inherit-product, device/zte/coeus/full_coeus.mk)

PRODUCT_BUILD_PROP_OVERRIDES += PRODUCT_NAME=coeus TARGET_DEVICE=coeus BUILD_FINGERPRINT="zte/coeus/coeus:4.1.2/JZO54K/20131120.122439.29115:user/release-keys" PRIVATE_BUILD_DESC="coeus-user 4.1.2 JZO54K 20131120.122439.29115 release-keys"

PRODUCT_DEVICE := coeus
PRODUCT_NAME := cm_coeus
PRODUCT_BRAND := zte
PRODUCT_MODEL := coeus
PRODUCT_MANUFACTURER := zte
