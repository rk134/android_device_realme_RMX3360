#
# Copyright (C) 2021-2022 The LineageOS Project
#
# SPDX-License-Identifier: Apache-2.0
#

# Inherit from those products. Most specific first.
$(call inherit-product, $(SRC_TARGET_DIR)/product/core_64_bit.mk)
$(call inherit-product, $(SRC_TARGET_DIR)/product/full_base_telephony.mk)

# Inherit from device makefile
$(call inherit-product, device/realme/lunaa/device.mk)

# Inherit some common Statix stuff.
$(call inherit-product, vendor/statix/config/common.mk)
$(call inherit-product, vendor/statix/config/gsm.mk)

# Statix build configuration
TARGET_BOOT_ANIMATION_RES := 1080
ENABLE_GAMETOOLS := true

# Device identifier. This must come after all inclusions.
PRODUCT_NAME := statix_lunaa
PRODUCT_DEVICE := lunaa
PRODUCT_MANUFACTURER := realme
PRODUCT_BRAND := realme
PRODUCT_MODEL := lunaa

PRODUCT_SYSTEM_NAME := RMX3360
PRODUCT_SYSTEM_DEVICE := RE54ABL1

PRODUCT_BUILD_PROP_OVERRIDES += \
    TARGET_PRODUCT=$(PRODUCT_SYSTEM_NAME)
    TARGET_DEVICE=$(PRODUCT_SYSTEM_DEVICE)

PRODUCT_GMS_CLIENTID_BASE := android-oppo
