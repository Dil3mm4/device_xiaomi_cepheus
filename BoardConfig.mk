#
# Copyright (C) 2019 The LineageOS Project
#
# SPDX-License-Identifier: Apache-2.0
#

# Inherit from sm8150-common
-include device/xiaomi/sm8150-common/BoardConfigCommon.mk

DEVICE_PATH := device/xiaomi/cepheus

# A/B updater
AB_OTA_UPDATER := true

# Assert
TARGET_OTA_ASSERT_DEVICE := cepheus

# Bootloader
TARGET_BOOTLOADER_BOARD_NAME := cepheus

# HIDL
DEVICE_FRAMEWORK_MANIFEST_FILE += $(DEVICE_PATH)/framework_manifest.xml

# Power
TARGET_TAP_TO_WAKE_EVENT_NODE := "/dev/input/event4"

# Kernel
TARGET_KERNEL_CONFIG := cepheus_defconfig

# Inherit from the proprietary version
-include vendor/xiaomi/cepheus/BoardConfigVendor.mk

# Vendor init
TARGET_INIT_VENDOR_LIB := //$(DEVICE_PATH):libinit_cepheus
TARGET_RECOVERY_DEVICE_MODULES := libinit_cepheus

# Sepolicy
BOARD_PLAT_PRIVATE_SEPOLICY_DIR += $(DEVICE_PATH)/sepolicy/private
