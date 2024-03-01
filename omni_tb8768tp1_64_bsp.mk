#
# Copyright (C) 2024 The Android Open Source Project
# Copyright (C) 2024 SebaUbuntu's TWRP device tree generator
#
# SPDX-License-Identifier: Apache-2.0
#

# Inherit from those products. Most specific first.
$(call inherit-product, $(SRC_TARGET_DIR)/product/core_64_bit.mk)
$(call inherit-product, $(SRC_TARGET_DIR)/product/full_base_telephony.mk)

# Inherit some common Omni stuff.
$(call inherit-product, vendor/omni/config/common.mk)

# Inherit from tb8768tp1_64_bsp device
$(call inherit-product, device/lenovo/tb8768tp1_64_bsp/device.mk)

PRODUCT_DEVICE := tb8768tp1_64_bsp
PRODUCT_NAME := omni_tb8768tp1_64_bsp
PRODUCT_BRAND := Lenovo
PRODUCT_MODEL := Lenovo TB-8506F
PRODUCT_MANUFACTURER := lenovo

PRODUCT_GMS_CLIENTID_BASE := android-lenovo

PRODUCT_BUILD_PROP_OVERRIDES += \
    PRIVATE_BUILD_DESC="full_tb8768tp1_64_bsp-user 11 RP1A.200720.011 TB-8506F_S000041_231212_ROW release-keys"

BUILD_FINGERPRINT := Lenovo/TB-8506F/TB-8506F:11/RP1A.200720.011/TB-8506F_S000041_231212_ROW:user/release-keys
