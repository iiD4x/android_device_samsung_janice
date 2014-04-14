#
# Copyright (C) 2012 The CyanogenMod Project
# Copyright (C) 2012 The LiquidSmooth Project
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

# Release name
PRODUCT_RELEASE_NAME := GT-I9070

# device
$(call inherit-product-if-exists, device/samsung/janice/full_janice.mk)

# phone
$(call inherit-product, vendor/liquid/config/common_phone.mk)

# Boot animation
TARGET_SCREEN_HEIGHT := 800
TARGET_SCREEN_WIDTH := 480

# If the boot animation is not automatically selected, we chose it here :)
PRODUCT_COPY_FILES +=  \
    vendor/liquid/prebuilt/common/bootanimation/480.zip:system/media/bootanimation.zip

# CM Packages
PRODUCT_PACKAGES += \
    Stk \
    org.cyanogenmod.hardware \
    org.cyanogenmod.hardware.xml

# products
PRODUCT_DEVICE := janice
PRODUCT_BRAND := Samsung
PRODUCT_NAME := liquid_janice
PRODUCT_MODEL := GT-I9070
PRODUCT_MANUFACTURER := Samsung

# overrides
PRODUCT_BUILD_PROP_OVERRIDES += PRODUCT_NAME=GT-I9070 TARGET_DEVICE=janice
