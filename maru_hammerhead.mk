#
# Copyright 2015-2016 Preetam J. D'Souza
# Copyright 2016 The Maru OS Project
#
# Licensed under the Apache License, Version 2.0 (the "License");
# you may not use this file except in compliance with the License.
# You may obtain a copy of the License at
#
#    http://www.apache.org/licenses/LICENSE-2.0
#
# Unless required by applicable law or agreed to in writing, software
# distributed under the License is distributed on an "AS IS" BASIS,
# WITHOUT WARRANTIES OR CONDITIONS OF ANY KIND, either express or implied.
# See the License for the specific language governing permissions and
# limitations under the License.
#
$(call inherit-product, device/lge/hammerhead/full_hammerhead.mk)
$(call inherit-product, vendor/maruos/device-maru.mk)
$(call inherit-product, vendor/maruos/BoardConfigVendor.mk)

# Include LineageOS stuff
$(call inherit-product, vendor/cm/sepolicy/sepolicy.mk)
$(call inherit-product, vendor/cm/config/common_full_phone.mk)

PRODUCT_NAME := maru_hammerhead
PRODUCT_MODEL := Maru on the Nexus 5

# allow /vendor/maruos files
PRODUCT_RESTRICT_VENDOR_FILES := false

PRODUCT_PACKAGES += \
    Launcher3

DEVICE_PACKAGE_OVERLAYS += \
    device/lge/hammerhead/overlay_maru/location \
    device/lge/hammerhead/overlay_maru/apps \
    device/lge/hammerhead/overlay_maru/daydream

# pick native mode tweak is supported on hammerhead
PRODUCT_PROPERTY_OVERRIDES += \
    persist.m.hdmi.try_native_mode=0
