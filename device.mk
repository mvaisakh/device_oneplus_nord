# SPDX-License-Identifier: GPL-2.0-or-later
# Copyright 2020 Paranoid Android 

# Get non-open-source specific aspects
$(call inherit-product-if-exists, vendor/oneplus/nord/nord-vendor.mk)

PRODUCT_SHIPPING_API_LEVEL := 29

PRODUCT_CHARACTERISTICS := nosdcard

# AB
PRODUCT_PACKAGES += \
	update_engine \
    update_engine_client \
    update_verifier \
    bootctrl.lito \
    android.hardware.boot@1.0-impl \
    android.hardware.boot@1.0-service

PRODUCT_HOST_PACKAGES += \
    brillo_update_payload

PRODUCT_PACKAGES_DEBUG += bootctl

PRODUCT_STATIC_BOOT_CONTROL_HAL := \
	bootctrl.lito \
	librecovery_updater_msm \
	libz \
	libcutils

PRODUCT_PACKAGES += \
	update_engine_sideload

# AVB
BOARD_AVB_VBMETA_SYSTEM := system
BOARD_AVB_VBMETA_SYSTEM_ALGORITHM := SHA256_RSA2048
BOARD_AVB_VBMETA_SYSTEM_ROLLBACK_INDEX := $(PLATFORM_SECURITY_PATCH_TIMESTAMP)
BOARD_AVB_VBMETA_SYSTEM_ROLLBACK_INDEX_LOCATION := 2
$(call inherit-product, build/make/target/product/gsi_keys.mk)

# AID/fs configs
PRODUCT_PACKAGES += \
    fs_config_files
