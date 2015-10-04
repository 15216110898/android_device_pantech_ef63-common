$(call inherit-product, device/pantech/ef63s/full_ef63s.mk)

# Enhanced NFC
$(call inherit-product, vendor/cm/config/nfc_enhanced.mk)

# Inherit some common CM stuff.
$(call inherit-product, vendor/cm/config/common_full_phone.mk)

PRODUCT_NAME := cm_ef63s
PRODUCT_DEVICE := ef63s

PRODUCT_GMS_CLIENTID_BASE := android-pantech

#PRODUCT_BUILD_PROP_OVERRIDES += BUILD_FINGERPRINT=4.4.2/KVT49L/1390465867:user/release-keys PRIVATE_BUILD_DESC="msm8974-user 4.4.2 KVT49L eng.root.20141017.144947 release-keys"

#Nightly Build
CM_BUILDTYPE := NIGHTLY
