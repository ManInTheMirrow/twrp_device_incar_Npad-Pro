#
# Copyright (C) 2023 The Android Open Source Project
# Copyright (C) 2023 SebaUbuntu's TWRP device tree generator
#
# SPDX-License-Identifier: Apache-2.0
#

# Inherit from those products. Most specific first.
$(call inherit-product, $(SRC_TARGET_DIR)/product/core_64_bit.mk)
$(call inherit-product, $(SRC_TARGET_DIR)/product/base.mk)

# Installs gsi keys into ramdisk, to boot a developer GSI with verified boot.
$(call inherit-product, $(SRC_TARGET_DIR)/product/gsi_keys.mk)

# Configure emulated_storage.mk
$(call inherit-product, $(SRC_TARGET_DIR)/product/emulated_storage.mk)

# Virtual A/B OTA
$(call inherit-product, $(SRC_TARGET_DIR)/product/virtual_ab_ota.mk)

# Inherit from I11_Plus device
$(call inherit-product, device/incar/I11_Plus/device.mk)

# Inherit some common recovery stuff.
$(call inherit-product, vendor/twrp/config/common.mk)

# Device identifier. This must come after all inclusions
PRODUCT_DEVICE := I11_Plus
PRODUCT_NAME := twrp_I11_Plus
PRODUCT_BRAND := BMAX
PRODUCT_MODEL := Npad-Pro
PRODUCT_MANUFACTURER := incar

PRODUCT_BUILD_PROP_OVERRIDES += \
    TARGET_DEVICE=I11_Plus \
    PRODUCT_NAME=I11_Plus \
    PRIVATE_BUILD_DESC="I11_Plus-user 12 SP1A.210812.016 221028 release-keys"

BUILD_FINGERPRINT := BMAX/I11_Plus/I11_Plus:12/SP1A.210812.016/221028:user/release-keys