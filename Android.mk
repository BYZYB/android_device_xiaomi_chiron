#
# Copyright (C) 2017-2024 The LineageOS Project
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

LOCAL_PATH := $(call my-dir)

ifeq ($(TARGET_DEVICE),chiron)
include $(call all-makefiles-under,$(LOCAL_PATH))
include $(CLEAR_VARS)

# Bluetooth firmware mount point
BT_FIRMWARE_MOUNT_POINT := $(TARGET_OUT_VENDOR)/bt_firmware
$(BT_FIRMWARE_MOUNT_POINT):
	@mkdir -p $(TARGET_OUT_VENDOR)/bt_firmware
ALL_DEFAULT_INSTALLED_MODULES += $(BT_FIRMWARE_MOUNT_POINT)

# DSP mount point
DSP_MOUNT_POINT := $(TARGET_OUT_VENDOR)/dsp
$(DSP_MOUNT_POINT):
	@mkdir -p $(TARGET_OUT_VENDOR)/dsp
ALL_DEFAULT_INSTALLED_MODULES += $(DSP_MOUNT_POINT)

# Modem firmware mount point
MODEM_FIRMWARE_MOUNT_POINT := $(TARGET_OUT_VENDOR)/firmware_mnt
$(MODEM_FIRMWARE_MOUNT_POINT):
	@mkdir -p $(TARGET_OUT_VENDOR)/firmware_mnt
ALL_DEFAULT_INSTALLED_MODULES += $(MODEM_FIRMWARE_MOUNT_POINT)

# WCNSS_qcom_cfg.ini symlinks
WCNSS_INI_SYMLINK := $(TARGET_OUT_VENDOR)/firmware/wlan/qca_cld/WCNSS_qcom_cfg.ini
$(WCNSS_INI_SYMLINK): $(LOCAL_INSTALLED_MODULE)
	@mkdir -p $(dir $@)
	@rm -rf $@
	$(hide) ln -sf /vendor/etc/wifi/$(notdir $@) $@
ALL_DEFAULT_INSTALLED_MODULES += $(WCNSS_INI_SYMLINK)

# wlan_mac.bin symlinks
WCNSS_MAC_SYMLINK := $(TARGET_OUT_VENDOR)/firmware/wlan/qca_cld/wlan_mac.bin
$(WCNSS_MAC_SYMLINK): $(LOCAL_INSTALLED_MODULE)
	@mkdir -p $(dir $@)
	@rm -rf $@
	$(hide) ln -sf /mnt/vendor/persist/$(notdir $@) $@
ALL_DEFAULT_INSTALLED_MODULES += $(WCNSS_MAC_SYMLINK)
endif
