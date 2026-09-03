#
# SPDX-FileCopyrightText: The LineageOS Project
# SPDX-License-Identifier: Apache-2.0
#

# Add common definitions for Qualcomm
$(call inherit-product, hardware/qcom-caf/common/common.mk)

# Partitions
PRODUCT_PACKAGES += \
    vendor_bt_firmware_mountpoint \
    vendor_dsp_mountpoint \
    vendor_firmware_mnt_mountpoint \
    vendor_vm-system_mountpoint

# Soong namespaces
PRODUCT_SOONG_NAMESPACES += \
    $(LOCAL_PATH) \
    hardware/sony

# Inherit from the proprietary files makefile.
$(call inherit-product, vendor/sony/pdx246/pdx246-vendor.mk)
