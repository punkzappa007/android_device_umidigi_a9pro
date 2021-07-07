# Release name
PRODUCT_RELEASE_NAME := noob

$(call inherit-product, $(SRC_TARGET_DIR)/product/core_64_bit.mk)
$(call inherit-product-if-exists, $(SRC_TARGET_DIR)/product/embedded.mk)
$(call inherit-product, $(SRC_TARGET_DIR)/product/full_base_telephony.mk)
$(call inherit-product, $(SRC_TARGET_DIR)/product/languages_full.mk)

# Inherit some common Pitchblack stuff.
$(call inherit-product, vendor/pb/config/common.mk)

PRODUCT_COPY_FILES += $(call find-copy-subdir-files,*,$(LOCAL_PATH)/recovery/root,recovery/root)

# Fastbootd
PRODUCT_PACKAGES += \
    android.hardware.fastboot@1.0-impl-mock \
    android.hardware.fastboot@1.0-impl-mock.recovery

# Device identifier. This must come after all inclusions
PRODUCT_BRAND := Umidigi
PRODUCT_DEVICE := noob
PRODUCT_MANUFACTURER := Umidigi
PRODUCT_MODEL := a9pro
PRODUCT_NAME := omni_noob


# enable stock zip packages flash
PRODUCT_DEFAULT_PROPERTY_OVERRIDES += \
    ro.treble.enabled=true \
    ro.secure=1 \
    ro.adb.secure=0
