PRODUCT_RELEASE_NAME := Umidigi-A9PRO

$(call inherit-product, device/umidigi/noob/device.mk)

# Inherit some common Omni stuff.
$(call inherit-product, vendor/omni/config/common.mk)

# Dynamic partitions
PRODUCT_USE_DYNAMIC_PARTITIONS := true

TARGET_RECOVERY_DEVICE_MODULES += \
    libkeymaster4 \
    libpuresoftkeymasterdevice \
    ashmemd_aidl_interface-cpp \
    libashmemd_client

TW_RECOVERY_ADDITIONAL_RELINK_LIBRARY_FILES += \
    $(TARGET_OUT_SHARED_LIBRARIES)/libkeymaster4.so \
    $(TARGET_OUT_SHARED_LIBRARIES)/libpuresoftkeymasterdevice.so \
    $(TARGET_OUT_SHARED_LIBRARIES)/ashmemd_aidl_interface-cpp.so \
    $(TARGET_OUT_SHARED_LIBRARIES)/libashmemd_client.so

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
