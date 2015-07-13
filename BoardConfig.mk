#
# Copyright 2014 The Android Open-Source Project
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

# Use the non-open-source parts, if they're present
-include vendor/hardkernel/odroidc1/BoardConfigVendor.mk

TARGET_ARCH := arm
TARGET_ARCH_VARIANT := armv7-a-neon
TARGET_CPU_ABI := armeabi-v7a
TARGET_CPU_ABI2 := armeabi
TARGET_KERNEL_CONFIG := odroidc_defconfig
TARGET_KERNEL_SOURCE := kernel/hardkernel/odroidc1

TARGET_BOOTLOADER_BOARD_NAME := odroidc
TARGET_BOARD_PLATFORM := amlogic
TARGET_NO_BOOTLOADER := true

TARGET_USERIMAGES_USE_EXT4 := true
TARGET_BUILD_WIPE_USERDATA := false
BOARD_SYSTEMIMAGE_PARTITION_SIZE := 1073741824
BOARD_USERDATAIMAGE_PARTITION_SIZE := 3221225472
BOARD_CACHEIMAGE_FILE_SYSTEM_TYPE := ext4
BOARD_CACHEIMAGE_PARTITION_SIZE := 536870912
BOARD_FLASH_BLOCK_SIZE := 2048

# Bluetooth
BOARD_HAVE_BLUETOOTH := true
BLUETOOTH_HCI_USE_USB := true
BOARD_HAVE_BLUETOOTH_BCM := true
BOARD_BLUETOOTH_BDROID_BUILDCFG_INCLUDE_DIR := device/hardkernel/odroidc/bluetooth
BOARD_BLUETOOTH_DOES_NOT_USE_RFKILL := trueBOARD_SEPOLICY_DIRS := \
BOARD_SEPOLICY_DIRS := \
    device/hardkernel/odroidc1/sepolicy

BOARD_SEPOLICY_UNION := \
    file_contexts \
    genfs_contexts \
    adbd.te \
    app.te \
    device.te \
    domain.te \
    gpsd.te \
    file.te \
    mediaserver.te \
    surfaceflinger.te \
    system.te \
    vold.te \
    zygote.te \
    unlabeled.te
