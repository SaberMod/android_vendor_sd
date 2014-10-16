ifeq (sd_mako,$(TARGET_PRODUCT))
include vendor/sd/configs/sd_modular.mk

# Optimize memory
OPT_MEMORY := true

# Include SaberDroid common configuration
include vendor/sd/main.mk

# Call Saberdroid device
$(call inherit-product, vendor/sd/products/sd_mako.mk)

# Inherit AOSP device configuration
$(call inherit-product, device/lge/mako/full_mako.mk)

# Override AOSP build properties
PRODUCT_NAME := sd_mako
PRODUCT_BRAND := Google
PRODUCT_MODEL := Nexus 4
PRODUCT_MANUFACTURER := LGE
PRODUCT_BUILD_PROP_OVERRIDES += PRODUCT_NAME=occam BUILD_FINGERPRINT=google/occam/mako:4.4.2/KOT49H/937116:user/release-keys PRIVATE_BUILD_DESC="occam-user 4.4.2 KOT49H 937116 release-keys"
endif
