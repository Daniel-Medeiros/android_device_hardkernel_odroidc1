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

PRODUCT_COPY_FILES += \
    $(LOCAL_PATH)/Third_party_apk_camera.xml:system/etc/Third_party_apk_camera.xml \
    frameworks/native/data/etc/tablet_core_hardware.xml:system/etc/permissions/tablet_core_hardware.xml \
    frameworks/native/data/etc/android.hardware.location.gps.xml:system/etc/permissions/android.hardware.location.gps.xml \
    frameworks/native/data/etc/android.hardware.touchscreen.multitouch.jazzhand.xml:system/etc/permissions/android.hardware.touchscreen.multitouch.jazzhand.xml \
    frameworks/native/data/etc/android.hardware.usb.accessory.xml:system/etc/permissions/android.hardware.usb.accessory.xml \
    frameworks/native/data/etc/android.hardware.location.gps.xml:system/etc/permissions/android.hardware.location.gps.xml \
    frameworks/native/data/etc/android.hardware.usb.host.xml:system/etc/permissions/android.hardware.usb.host.xml \
    frameworks/native/data/etc/android.software.sip.voip.xml:system/etc/permissions/android.software.sip.voip.xml \
    frameworks/native/data/etc/android.hardware.sensor.gyroscope.xml:system/etc/permissions/android.hardware.sensor.gyroscope.xml \
    frameworks/native/data/etc/android.hardware.camera.front.xml:system/etc/permissions/android.hardware.camera.front.xml \
    frameworks/native/data/etc/android.hardware.wifi.xml:system/etc/permissions/android.hardware.wifi.xml \
    frameworks/native/data/etc/android.hardware.bluetooth_le.xml:system/etc/permissions/android.hardware.bluetooth_le.xml \
    frameworks/native/data/etc/android.hardware.usb.host.xml:system/etc/permissions/android.hardware.usb.host.xml \
    frameworks/native/data/etc/android.hardware.usb.accessory.xml:system/etc/permissions/android.hardware.usb.accessory.xml


PRODUCT_CHARACTERISTICS := tablet
PRODUCT_COPY_FILES += \
	$(LOCAL_PATH)/rootdir/init.odroidc.rc:root/init.odroidc.rc \
	$(LOCAL_PATH)/rootdir/init.odroidc.usb.rc:root/init.odroidc.usb.rc \
	$(LOCAL_PATH)/rootdir/ueventd.odroidc.rc:root/ueventd.odroidc.rc \
	$(LOCAL_PATH)/rootdir/fstab.odroidc:root/fstab.odroidc	\
	$(LOCAL_PATH)/rootdir/init.odroidc.board.rc:root/init.odroidc.board.rc

# Wifi config
PRODUCT_COPY_FILES += \
    $(LOCAL_PATH)/wifi/rt2870.bin:root/lib/firmware/rt2870.bin \
    device/hardkernel/odroidc1/wifi/RT2870STA.dat:system/etc/Wireless/RT2870STA/RT2870STA.dat \
    device/hardkernel/odroidc1/wifi/wifi_id_list.txt:system/etc/wifi_id_list.txt
