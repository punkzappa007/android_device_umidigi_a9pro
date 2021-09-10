# Device path
LOCAL_PATH := device/umidigi/noob

# Architecture
TARGET_ARCH := arm64
TARGET_ARCH_VARIANT := armv8-a
TARGET_CPU_ABI := arm64-v8a
TARGET_CPU_ABI2 :=
TARGET_CPU_VARIANT := generic

TARGET_2ND_ARCH := arm
TARGET_2ND_ARCH_VARIANT := armv7-a-neon
TARGET_2ND_CPU_ABI := armeabi-v7a
TARGET_2ND_CPU_ABI2 := armeabi
TARGET_2ND_CPU_VARIANT := generic
TARGET_BOARD_SUFFIX := _64
TARGET_USES_64_BIT_BINDER := true

# Platform
TARGET_BOARD_PLATFORM := mt6771

# Bootloader
TARGET_BOOTLOADER_BOARD_NAME := mt6771
TARGET_NO_BOOTLOADER := true
TARGET_USES_UEFI := true

# Kernel
BOARD_KERNEL_BASE := 0x40078000
BOARD_KERNEL_PAGESIZE := 2048
BOARD_KERNEL_CMDLINE := bootopt=64S3,32N2,64N2 androidboot.selinux=permissive
TARGET_PREBUILT_KERNEL := $(LOCAL_PATH)/prebuilt/kernel
BOARD_MKBOOTIMG_ARGS := --base 0x40078000 --ramdisk_offset 0x14f88000 --second_offset 0x00f00000 --tags_offset 0x13f88000
BOARD_KERNEL_IMAGE_NAME := kernel

# system.prop
TARGET_SYSTEM_PROP := $(LOCAL_PATH)/system.prop

TARGET_OTA_ASSERT_DEVICE := a9pro

#Partitions
BOARD_BUILD_SYSTEM_ROOT_IMAGE := true
BOARD_BOOTIMAGE_PARTITION_SIZE := 33554432
BOARD_RECOVERYIMAGE_PARTITION_SIZE := 33554432
BOARD_USERDATAIMAGE_FILE_SYSTEM_TYPE := ext4
BOARD_CACHEIMAGE_FILE_SYSTEM_TYPE := ext4
BOARD_VENDORIMAGE_FILE_SYSTEM_TYPE := ext4
BOARD_FLASH_BLOCK_SIZE := 131072 # BOARD_KERNEL_PAGESIZE * 64

TARGET_USERIMAGES_USE_EXT4 := true
TARGET_USERIMAGES_USE_F2FS := true

# Recovery
TARGET_RECOVERY_PIXEL_FORMAT := "BGRA_8888"
TARGET_RECOVERY_FSTAB := $(LOCAL_PATH)/twrp.fstab
BOARD_HAS_NO_SELECT_BUTTON := true
BOARD_HAS_LARGE_FILESYSTEM := true

# Workaround for error copying vendor files to recovery ramdisk
BOARD_VENDORIMAGE_FILE_SYSTEM_TYPE := ext4
TARGET_COPY_OUT_VENDOR := vendor

# TWRP
BOARD_SUPPRESS_SECURE_ERASE := true
BOARD_USE_FRAMEBUFFER_ALPHA_CHANNEL := true
DEVICE_SCREEN_WIDTH := 720
DEVICE_SCREEN_HEIGHT := 1520
RECOVERY_SDCARD_ON_DATA := true
RECOVERY_GRAPHICS_USE_LINELENGTH := true
TARGET_RECOVERY_LCD_BACKLIGHT_PATH := \"/sys/class/leds/lcd-backlight/brightness\"
TARGET_DISABLE_TRIPLE_BUFFERING := false
TW_THEME := portrait_hdpi
TW_MAX_BRIGHTNESS := 255
TW_CUSTOM_CPU_TEMP_PATH := /sys/devices/virtual/thermal/thermal_zone1/temp
TW_INCLUDE_CRYPTO := true
TW_BRIGHTNESS_PATH := /sys/class/leds/lcd-backlight/brightness
TW_MAX_BRIGHTNESS := 255
TW_NO_USB_STORAGE := false
TW_INTERNAL_STORAGE_PATH := "/data/media"
TW_INTERNAL_STORAGE_MOUNT_POINT := "data"
TW_EXTERNAL_STORAGE_PATH := "/external_sd"
TW_EXTERNAL_STORAGE_MOUNT_POINT := "external_sd"
TW_DEFAULT_EXTERNAL_STORAGE := true
TW_USE_TOOLBOX := true
TW_EXTRA_LANGUAGES := true
TW_DEFAULT_LANGUAGE := en
TW_NO_SCREEN_BLANK := true
TW_NO_BATT_PERCENT := false

# Crypto
TW_INCLUDE_CRYPTO := true
TW_CRYPTO_FS_TYPE := "ext4"
TW_CRYPTO_REAL_BLKDEV := "/dev/block/platform/bootdevice/by-name/userdata"
TW_CRYPTO_MNT_POINT := "/data"
TW_CRYPTO_FS_OPTIONS := "nosuid,nodev,noatime,discard,noauto_da_alloc,data=ordered"

# Debug
TWRP_INCLUDE_LOGCAT := true
TARGET_USES_LOGD := true

# SHRP Flags
# Device codename
SHRP_DEVICE_CODE := noob
# Path of your SHRP device tree
SHRP_PATH := device/umidigi/$(SHRP_DEVICE_CODE)
# Maintainer name
SHRP_MAINTAINER := punkzappa007
# Recovery Type (for "About" section only)
# Default (if not set): N/A
SHRP_REC_TYPE := SAR
# Your device's recovery path, dont use blindly
SHRP_REC := /dev/block/by-name/recovery
# internal storage path
SHRP_INTERNAL := /sdcard
# If your device has an external sdcard
SHRP_EXTERNAL := /external_sd
# USB OTG path
SHRP_OTG := /usb_otg
# Flashlight: (0 = disable, 1 = enable)
SHRP_FLASH := 1
# custom led paths for flashlight
# find yours then replace the examples here
SHRP_CUSTOM_FLASHLIGHT := true
SHRP_FONP_1 := "/sys/devices/virtual/torch/torch/torch_level"
SHRP_FONP_2 := /sys/devices/virtual/torch/torch/torch_level
SHRP_FLASH_MAX_BRIGHTNESS := 1
# For notch devices
SHRP_NOTCH := true
# SHRP Dark mode, use this flag to have dark theme set by default
SHRP_DARK := true
# Do not include the SHRP theming system
SHRP_LITE := true
# Addon - Clear Fingerprint (remove fingerprint lock from system)
SHRP_SKIP_DEFAULT_ADDON_3 := true
SHRP_OFFICIAL := true
SHRP_NO_SAR_AUTOMOUNT := true
