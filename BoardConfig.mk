# Copyright (C) 2013 The CyanogenMod Project
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

# inherit from the common fusion3 definitions
include device/sony/fusion3-common/BoardConfigCommon.mk

# inherit from the proprietary version
-include vendor/sony/yuga/BoardConfigVendor.mk

# Assert
TARGET_OTA_ASSERT_DEVICE := C6602,C6603,C6606,yuga

TARGET_SPECIFIC_HEADER_PATH += device/sony/yuga/include

BOARD_BLUETOOTH_BDROID_BUILDCFG_INCLUDE_DIR := device/sony/yuga/bluetooth

TARGET_KERNEL_CONFIG := fusion3_yuga_defconfig

# Optimizations
CLANG_O3 := false
STRICT_ALIASING := false
KRAIT_TUNINGS := false
GRAPHITE_OPTS := false
ENABLE_GCCONLY := false
ENABLE_SANITIZE := false
USE_PIPE := false

# Healthd
BACKLIGHT_PATH := /sys/devices/i2c-0/0-0036/leds/lm3533-lcd-bl/brightness

# Partition sizes
BOARD_BOOTIMAGE_PARTITION_SIZE := 0x01400000
BOARD_RECOVERYIMAGE_PARTITION_SIZE := 0x01400000
BOARD_SYSTEMIMAGE_PARTITION_SIZE := 2147483648
BOARD_USERDATAIMAGE_PARTITION_SIZE := 12828261888

BOARD_HARDWARE_CLASS += device/sony/yuga/cmhw

# TWRP
TW_THEME := portrait_hdpi
TW_BRIGHTNESS_PATH := /sys/devices/i2c-0/0-0036/leds/lm3533-lcd-bl/brightness
