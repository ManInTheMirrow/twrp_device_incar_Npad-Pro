#
# Copyright (C) 2023 The Android Open Source Project
# Copyright (C) 2023 SebaUbuntu's TWRP device tree generator
#
# SPDX-License-Identifier: Apache-2.0
#

LOCAL_PATH := device/incar/I11_Plus

# Dynamic Partitions stuff
PRODUCT_USE_DYNAMIC_PARTITIONS := true

# Shipping VNDK
PRODUCT_TARGET_VNDK_VERSION := 31

# Shipping API level
PRODUCT_SHIPPING_API_LEVEL := 31

PRODUCT_PLATFORM := ums9230

# Virtual A/B
ENABLE_VIRTUAL_AB := true

# A/B
AB_OTA_UPDATER := true
AB_OTA_PARTITIONS += \
    boot \
    sdc \
    trustos \
    sml \
    teecfg \
    vbmeta \
    vbmeta_system \
    vbmeta_system_ext \
    vbmeta_vendor \
    vbmeta_product \
    dtbo \
    uboot \
    vendor_boot \
    l_modem \
    l_gdsp \
    l_ldsp \
    l_agdsp \
    pm_sys \
    l_fixnv1 \
    l_fixnv2 \
    l_deltanv \
    vendor_dlkm \
    system \
    system_ext \
    vendor \
    product

# Update engine
PRODUCT_PACKAGES += \
    otapreopt_script \
    cppreopts.sh \
    update_engine \
    update_verifier \
    update_engine_sideload

AB_OTA_POSTINSTALL_CONFIG += \
    RUN_POSTINSTALL_system=true \
    POSTINSTALL_PATH_system=system/bin/otapreopt_script \
    FILESYSTEM_TYPE_system=erofs \
    POSTINSTALL_OPTIONAL_system=true

# Boot control HAL
PRODUCT_PACKAGES += \
    android.hardware.boot@1.2-impl-recovery \
    android.hardware.boot@1.2-impl \
    android.hardware.boot@1.2-service \

PRODUCT_PACKAGES += \
    bootctrl.ums9230 \
    bootctrl.ums9230.recovery

PRODUCT_PACKAGES_DEBUG += \
    bootctrl \
    update_engine_client

# Health Hal
PRODUCT_PACKAGES += \
    android.hardware.health@2.1-impl \
    android.hardware.health@2.1-service

# Fastbootd stuff
PRODUCT_PACKAGES += \
    android.hardware.fastboot@1.0-impl-mock \
    android.hardware.fastboot@1.0-impl-mock.recovery \
    fastbootd
