#
# Copyright (C) 2022 The LineageOS Project
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
$(call inherit-product, $(SRC_TARGET_DIR)/product/product_launched_with_p.mk)

# Inherit device configuration
$(call inherit-product, device/samsung/a40/device.mk)
$(call inherit-product, $(SRC_TARGET_DIR)/product/full_base_telephony.mk)

# Inherit some common LineageOS stuff.
$(call inherit-product, vendor/lineage/config/common_full_phone.mk)

# Device identifier. This must come after all inclusions
PRODUCT_DEVICE := a40
PRODUCT_NAME := lineage_a40
PRODUCT_BRAND := samsung
PRODUCT_MODEL := SM-A405FN
PRODUCT_MANUFACTURER := samsung
PRODUCT_PDA_MODEL := A405FN
PRODUCT_PDA_MODEL_VERSION := XXU4CUJ2
PRODUCT_PDA_VERSION := $(PRODUCT_PDA_MODEL)$(PRODUCT_PDA_MODEL_VERSION)
PRODUCT_GMS_CLIENTID_BASE := android-samsung

TARGET_BOOT_ANIMATION_RES := 1080

BUILD_FINGERPRINT := samsung/a40xx/a40:11/RP1A.200720.012/A405FNXXU4CUJ2:user/release-keys

PRODUCT_BUILD_PROP_OVERRIDES += \
    PRODUCT_NAME=a40xx \
    PRODUCT_DEVICE=a40 \
    PRIVATE_BUILD_DESC="a40xx-user 11 RP1A.200720.012 $(PRODUCT_PDA_VERSION) release-keys"

PRODUCT_PROPERTY_OVERRIDES += \
    ro.build.PDA=$(PRODUCT_PDA_VERSION)
