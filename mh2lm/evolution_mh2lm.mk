#
# Copyright (C) 2019 The LineageOS Project
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

# Inherit from those products. Most specific first.
$(call inherit-product, $(SRC_TARGET_DIR)/product/core_64_bit.mk)
$(call inherit-product, $(SRC_TARGET_DIR)/product/full_base_telephony.mk)

$(call inherit-product, $(SRC_TARGET_DIR)/product/product_launched_with_p.mk)

# Inherit from mh2lm device
$(call inherit-product, device/lge/mh2lm/device.mk)

# Inherit some common nusantara stuff.
 $(call inherit-product, vendor/evolution/config/common_full_phone.mk)

# Device identifiers
TARGET_BOOT_ANIMATION_RES := 1080
TARGET_DISABLES_GAPPS :=true

USE_PIXEL_CHARGING := true
TARGET_SUPPORTS_GOOGLE_RECORDER := true

PRODUCT_NAME := evolution_mh2lm
PRODUCT_DEVICE := mh2lm
PRODUCT_BRAND := lge
PRODUCT_MANUFACTURER := LGE
PRODUCT_RELEASE_NAME := G8X ThinQ
PRODUCT_MODEL := LM-G850

# Maintainer
EVO_DONATE_URL := https://paypal.me/youngg168
EVO_MAINTAINER := youngguo
EVO_SUPPORT_URL := https://t.me/youngguo

PRODUCT_GMS_CLIENTID_BASE := android-lge

TARGET_VENDOR_PRODUCT_NAME := mh2lm_lao_com
TARGET_VENDOR_DEVICE_NAME := mh2lm

PRODUCT_BUILD_PROP_OVERRIDES += \
    PRODUCT_NAME="mh2lm_lao_com" \
    PRIVATE_BUILD_DESC="mh2lm_lao_com-user 11 RKQ1.210420.001 2122112261c44 release-keys"

BUILD_FINGERPRINT := "lge/mh2lm_lao_com/mh2lm:11/RKQ1.210420.001/2122112261c44:user/release-keys"

