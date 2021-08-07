#
# Copyright (C) 2017-2020 The LineageOS Project
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

# ADSP symlinks
RFS_MSM_ADSP_SYMLINKS := $(TARGET_OUT_VENDOR)/rfs/msm/adsp/
$(RFS_MSM_ADSP_SYMLINKS): $(LOCAL_INSTALLED_MODULE)
	@rm -rf $@/*
	@mkdir -p $(dir $@)/readonly/vendor
	$(hide) ln -sf /data/vendor/tombstones/rfs/lpass $@/ramdumps
	$(hide) ln -sf /mnt/vendor/persist/hlos_rfs/shared $@/hlos
	$(hide) ln -sf /mnt/vendor/persist/rfs/msm/adsp $@/readwrite
	$(hide) ln -sf /mnt/vendor/persist/rfs/shared $@/shared
	$(hide) ln -sf /vendor/firmware $@/readonly/vendor/firmware
	$(hide) ln -sf /vendor/firmware_mnt $@/readonly/firmware
ALL_DEFAULT_INSTALLED_MODULES += $(RFS_MSM_ADSP_SYMLINKS)

# IMS symlinks
IMS_LIBS := libimscamera_jni.so libimsmedia_jni.so
IMS_SYMLINKS := $(addprefix $(TARGET_OUT_SYSTEM_EXT_APPS_PRIVILEGED)/ims/lib/arm64/,$(notdir $(IMS_LIBS)))
$(IMS_SYMLINKS): $(LOCAL_INSTALLED_MODULE)
	@mkdir -p $(dir $@)
	@rm -rf $@
	$(hide) ln -sf /system/system_ext/lib64/$(notdir $@) $@
ALL_DEFAULT_INSTALLED_MODULES += $(IMS_SYMLINKS)

# MPSS symlinks
RFS_MSM_MPSS_SYMLINKS := $(TARGET_OUT_VENDOR)/rfs/msm/mpss/
$(RFS_MSM_MPSS_SYMLINKS): $(LOCAL_INSTALLED_MODULE)
	@rm -rf $@/*
	@mkdir -p $(dir $@)/readonly/vendor
	$(hide) ln -sf /data/vendor/tombstones/rfs/modem $@/ramdumps
	$(hide) ln -sf /mnt/vendor/persist/hlos_rfs/shared $@/hlos
	$(hide) ln -sf /mnt/vendor/persist/rfs/msm/mpss $@/readwrite
	$(hide) ln -sf /mnt/vendor/persist/rfs/shared $@/shared
	$(hide) ln -sf /vendor/firmware $@/readonly/vendor/firmware
	$(hide) ln -sf /vendor/firmware_mnt $@/readonly/firmware
ALL_DEFAULT_INSTALLED_MODULES += $(RFS_MSM_MPSS_SYMLINKS)

# SLPI symlinks
RFS_MSM_SLPI_SYMLINKS := $(TARGET_OUT_VENDOR)/rfs/msm/slpi/
$(RFS_MSM_SLPI_SYMLINKS): $(LOCAL_INSTALLED_MODULE)
	@rm -rf $@/*
	@mkdir -p $(dir $@)/readonly/vendor
	$(hide) ln -sf /data/vendor/tombstones/rfs/slpi $@/ramdumps
	$(hide) ln -sf /mnt/vendor/persist/hlos_rfs/shared $@/hlos
	$(hide) ln -sf /mnt/vendor/persist/rfs/msm/slpi $@/readwrite
	$(hide) ln -sf /mnt/vendor/persist/rfs/shared $@/shared
	$(hide) ln -sf /vendor/firmware $@/readonly/vendor/firmware
	$(hide) ln -sf /vendor/firmware_mnt $@/readonly/firmware
ALL_DEFAULT_INSTALLED_MODULES += $(RFS_MSM_SLPI_SYMLINKS)

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
