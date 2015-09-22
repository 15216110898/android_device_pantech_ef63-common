#
# Copyright (C) 2014 The CyanogenMod Project
#
# Licensed under the Apache License, Version 2.0 (the "License");
# you may not use this file except in compliance with the License.
# You may obtain a copy of the License at
#
#      http://www.apache.org/licenses/LICENSE-2.0
#
# Unless required by applicable law or agreed to in writing, software
# distributed under the License is distributed on an "AS IS" BASIS,
# WITHOUT WARRANTIES OR CONDITIONS OF ANY KIND, either express or implied.
# See the License for the specific language governing permissions and
# limitations under the License.
#

# Inherit from MSM8974 common
-include device/pantech/msm8974-common/BoardConfigCommon.mk

# Assert
TARGET_OTA_ASSERT_DEVICE := ef63s,ef63k,ef63l,IM-A910S,IM-A910K,IM-A910L

# Bluetooth
BOARD_BLUETOOTH_BDROID_BUILDCFG_INCLUDE_DIR := device/pantech/ef63s/bluetooth

# Camera
USE_DEVICE_SPECIFIC_CAMERA := true
COMMON_GLOBAL_CFLAGS += -DPANTECH_CAMERA_HARDWARE

# Filesystem
BOARD_BOOTIMAGE_PARTITION_SIZE     := 16777216
BOARD_CACHEIMAGE_PARTITION_SIZE    := 536870912
BOARD_PERSISTIMAGE_PARTITION_SIZE  := 33554432
BOARD_RECOVERYIMAGE_PARTITION_SIZE := 16777216
BOARD_SYSTEMIMAGE_PARTITION_SIZE   := 1073741824
BOARD_USERDATAIMAGE_PARTITION_SIZE := 13747929088 # 13747945472 - 16384 for crypto footer
#BOARD_USERDATAIMAGE_PARTITION_SIZE := 3221225472

# Kernel
BOARD_KERNEL_CMDLINE := console=NULL,115200,n8 androidboot.hardware=qcom user_debug=31 msm_rtb.filter=0x37 ehci-hcd.park=3 vmalloc=260M loglevel=0 androidboot.selinux=permissive
TARGET_KERNEL_CONFIG := ef63s_defconfig
TARGET_KERNEL_SOURCE := kernel/pantech/ef63-common
CM_DTS_TARGET := 910

# NFC
BOARD_NFC_CHIPSET := pn547

# Recovery
BOARD_HAS_NO_SELECT_BUTTON       := true
BOARD_HAS_LARGE_FILESYSTEM       := true
BOARD_RECOVERY_ALWAYS_WIPES      := true
BOARD_RECOVERY_HANDLES_MOUNT     := true
BOARD_RECOVERY_SWIPE             := true
BOARD_SUPPRESS_EMMC_WIPE         := true
BOARD_SUPPRESS_SECURE_ERASE      := true
BOARD_USE_CUSTOM_RECOVERY_FONT   := \"roboto_23x41.h\"
BOARD_USES_MMCUTILS              := true
RECOVERY_FSTAB_VERSION           := 2
TARGET_RECOVERY_FSTAB            := device/pantech/ef63s/rootdir/etc/fstab.qcom
TARGET_RECOVERY_PIXEL_FORMAT     := "RGBX_8888"
TARGET_USERIMAGES_USE_EXT4       := true

# Recovery TW
-include device/pantech/ef63s/twr.mk

PRODUCT_BUILD_PROP_OVERRIDES     += BUILD_UTC_DATE=0

# Releasetools
TARGET_RELEASETOOLS_EXTENSIONS := device/pantech/ef63s/releasetools

# Vendor Init
TARGET_LIBINIT_DEFINES_FILE := device/pantech/ef63s/init/init_ef63s.c

# inherit from the proprietary version
-include vendor/pantech/ef63s/BoardConfigVendor.mk
