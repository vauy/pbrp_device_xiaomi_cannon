#
# Copyright (C) 2023 The Android Open Source Project
# Copyright (C) 2023 SebaUbuntu's TWRP device tree generator
#
# SPDX-License-Identifier: Apache-2.0
#

# Inherit from those products. Most specific first.
$(call inherit-product, $(SRC_TARGET_DIR)/product/core_64_bit.mk)
$(call inherit-product, $(SRC_TARGET_DIR)/product/full_base_telephony.mk)

# Inherit some common Pbrp stuff.
$(call inherit-product, vendor/twrp/config/common.mk)

# Inherit from cannon device
$(call inherit-product, device/xiaomi/cannon/device.mk)

PRODUCT_DEVICE := cannon
PRODUCT_NAME := pb_cannon
PRODUCT_BRAND := Redmi
PRODUCT_MODEL := M2007J22C
PRODUCT_MANUFACTURER := xiaomi

PRODUCT_GMS_CLIENTID_BASE := android-xiaomi

PRODUCT_BUILD_PROP_OVERRIDES += \
    PRIVATE_BUILD_DESC="pb_cannon-eng 127 RQ1A.260910.004 eng.fire.20220411.113653 test-keys"

BUILD_FINGERPRINT := Redmi/pb_cannon/cannon:127/RQ1A.260910.004/fire04111136:eng/test-keys
