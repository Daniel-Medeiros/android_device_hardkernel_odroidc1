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

ifeq ($(TARGET_PREBUILT_KERNEL),)
LOCAL_KERNEL := device/hardkernel/odroidc1-kernel
else
LOCAL_KERNEL := $(TARGET_PREBUILT_KERNEL)
endif

PRODUCT_COPY_FILES := \
	$(LOCAL_KERNEL):kernel

# Wifi config
PRODUCT_COPY_FILES += \
    $(LOCAL_PATH)/wifi/rt2870.bin:root/lib/firmware/rt2870.bin \
    device/hardkernel/odroidc/wifi/RT2870STA.dat:system/etc/Wireless/RT2870STA/RT2870STA.dat \
    device/hardkernel/odroidc/wifi/wifi_id_list.txt:system/etc/wifi_id_list.txt
