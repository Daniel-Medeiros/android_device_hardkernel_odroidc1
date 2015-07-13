$(call inherit-product, device/sony/odroidc1/full_odroidc1.mk)

# Inherit CM common Phone stuff.
$(call inherit-product, vendor/cm/config/common_full_phone.mk)

# Build fingerprints
PRODUCT_BUILD_PROP_OVERRIDES += PRODUCT_NAME=C1

PRODUCT_NAME := cm_odroidc1
PRODUCT_DEVICE := odroidc1
