#
# Copyright 2015 The CyanogenMod Project
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


TARGET_ARCH := arm
TARGET_ARCH_VARIANT := armv7-a-neon
TARGET_CPU_ABI := armeabi-v7a
TARGET_CPU_ABI2 := armeabi
TARGET_CPU_VARIANT := cortex-a9
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
BOARD_BLUETOOTH_BDROID_BUILDCFG_INCLUDE_DIR := device/hardkernel/odroidc1/bluetooth
BOARD_BLUETOOTH_DOES_NOT_USE_RFKILL := trueBOARD_SEPOLICY_DIRS := \
# Wifi
WIFI_DRIVER := rtl8192cu
BOARD_WIFI_VENDOR := realtek
BOARD_WLAN_DEVICE := rtl8192cu
WIFI_DRIVER_MODULE_NAME := rtl8192cu
WIFI_DRIVER_MODULE_PATH := /system/lib/modules/8192cu.ko
WPA_SUPPLICANT_VERSION := VER_0_8_X
BOARD_WPA_SUPPLICANT_DRIVER := NL80211
BOARD_WPA_SUPPLICANT_PRIVATE_LIB := lib_driver_cmd_nl80211
WIFI_DRIVER_MODULE_ARG    := ""
WIFI_FIRMWARE_LOADER      := ""
WIFI_DRIVER_FW_PATH_STA   := ""
WIFI_DRIVER_FW_PATH_AP    := ""
WIFI_DRIVER_FW_PATH_P2P   := ""
WIFI_DRIVER_FW_PATH_PARAM := ""

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
