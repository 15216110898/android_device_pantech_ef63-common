# Team Win Recovery configurations

DEVICE_RESOLUTION                := 1080x1920
RECOVERY_GRAPHICS_USE_LINELENGTH := true
RECOVERY_SDCARD_ON_DATA          := true
#TARGET_RECOVERY_INITRC          := device/pantech/ef63s/recovery/init.twrp.rc
TARGET_RECOVERY_QCOM_RTC_FIX     := true
#TW_BOARD_CUSTOM_GRAPHICS        := ../../../device/pantech/ef63s/recovery/twrpgraphics.c
#TW_CUSTOM_THEME                 := device/pantech/ef63s/recovery/res
TW_FLASH_FROM_STORAGE            := true
#TW_HAS_NO_RECOVERY_PARTITION    := true
TW_FLASH_FROM_STORAGE            := true
TW_EXTERNAL_STORAGE_PATH         := "/sdcard1"
TW_EXTERNAL_STORAGE_MOUNT_POINT  := "sdcard1"
TW_DEFAULT_EXTERNAL_STORAGE      := true
#TW_INCLUDE_CRYPTO               := true
TW_INCLUDE_JB_CRYPTO             := true
TW_CRYPTO_FS_TYPE                := "ext4"
TW_CRYPTO_REAL_BLKDEV            := "/dev/block/platform/msm_sdcc.1/by-name/userdata"
TW_CRYPTO_MNT_POINT              := "/data"
TW_CRYPTO_FS_OPTIONS             := "nosuid,nodev,barrier=1,noauto_da_alloc,discard"
TW_CRYPTO_KEY_LOC                := "/persist/metadata"
TW_INCLUDE_FUSE_EXFAT            := true
TW_BRIGHTNESS_PATH               := /sys/class/leds/lcd-backlight/brightness
TW_MAX_BRIGHTNESS                := 100
TW_NO_SCREEN_TIMEOUT             := true
#TW_TARGET_USES_QCOM_BSP         := true
