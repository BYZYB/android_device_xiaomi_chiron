#
# Copyright (C) 2018 The LineageOS Project
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

# ART
PRODUCT_DEFAULT_PROPERTY_OVERRIDES += \
    dalvik.vm.boot-dex2oat-threads=8 \
    dalvik.vm.dex2oat-cpu-set=0,1,2,3,4,5,6,7 \
    dalvik.vm.dex2oat-filter=everything \
    dalvik.vm.dex2oat-minidebuginfo=false \
    dalvik.vm.dex2oat-threads=8 \
    dalvik.vm.dex2oat64.enabled=true \
    dalvik.vm.image-dex2oat-cpu-set=0,1,2,3,4,5,6,7 \
    dalvik.vm.image-dex2oat-filter=everything \
    dalvik.vm.image-dex2oat-threads=8 \
    dalvik.vm.minidebuginfo=false \
    pm.dexopt.ab-ota=everything \
    pm.dexopt.bg-dexopt=everything \
    pm.dexopt.boot=everything \
    pm.dexopt.first-boot=everything \
    pm.dexopt.inactive=everything \
    pm.dexopt.install=everything \
    pm.dexopt.shared=everything \
    ro.sys.fw.dex2oat_thread_count=8

# Audio
PRODUCT_PROPERTY_OVERRIDES += \
    aaudio.hw_burst_min_usec=2000 \
    aaudio.mmap_exclusive_policy=2 \
    aaudio.mmap_policy=2 \
    af.fast_track_multiplier=2 \
    audio.deep_buffer.media=true \
    audio.offload.min.duration.secs=15 \
    audio.offload.video=true \
    persist.audio.fluence.voicecomm=true \
    persist.vendor.audio.fluence.speaker=true \
    persist.vendor.audio.fluence.voicecall=true \
    persist.vendor.audio.fluence.voicerec=true \
    persist.vendor.audio.ras.enabled=false \
    ro.vendor.audio.sdk.fluencetype=fluence \
    ro.vendor.audio.sdk.ssr=false \
    vendor.audio_hal.period_size=192 \
    vendor.audio.adm.buffering.ms=6 \
    vendor.audio.dolby.ds2.enabled=false \
    vendor.audio.dolby.ds2.hardbypass=false \
    vendor.audio.feature.a2dp_offload.enable=false \
    vendor.audio.feature.afe_proxy.enable=true \
    vendor.audio.feature.anc_headset.enable=true \
    vendor.audio.feature.audiozoom.enable=false \
    vendor.audio.feature.battery_listener.enable=false \
    vendor.audio.feature.compr_cap.enable=false \
    vendor.audio.feature.compr_voip.enable=true \
    vendor.audio.feature.compress_in.enable=false \
    vendor.audio.feature.compress_meta_data.enable=true \
    vendor.audio.feature.concurrent_capture.enable=false \
    vendor.audio.feature.custom_stereo.enable=true \
    vendor.audio.feature.deepbuffer_as_primary.enable=false \
    vendor.audio.feature.display_port.enable=true \
    vendor.audio.feature.dsm_feedback.enable=false \
    vendor.audio.feature.dynamic_ecns.enable=false \
    vendor.audio.feature.ext_hw_plugin.enable=false \
    vendor.audio.feature.external_dsp.enable=false \
    vendor.audio.feature.external_speaker_tfa.enable=false \
    vendor.audio.feature.external_speaker.enable=false \
    vendor.audio.feature.fluence.enable=true \
    vendor.audio.feature.fm.enable=true \
    vendor.audio.feature.hdmi_edid.enable=false \
    vendor.audio.feature.hdmi_passthrough.enable=false \
    vendor.audio.feature.hfp.enable=true \
    vendor.audio.feature.hifi_audio.enable=false \
    vendor.audio.feature.hwdep_cal.enable=false \
    vendor.audio.feature.incall_music.enable=false \
    vendor.audio.feature.keep_alive.enable=false \
    vendor.audio.feature.maxx_audio.enable=false \
    vendor.audio.feature.multi_voice_session.enable=true \
    vendor.audio.feature.ras.enable=true \
    vendor.audio.feature.record_play_concurency.enable=false \
    vendor.audio.feature.snd_mon.enable=false \
    vendor.audio.feature.spkr_prot.enable=false \
    vendor.audio.feature.src_trkn.enable=true \
    vendor.audio.feature.ssrec.enable=false \
    vendor.audio.feature.usb_offload_burst_mode.enable=false \
    vendor.audio.feature.usb_offload_sidetone_volume.enable=false \
    vendor.audio.feature.usb_offload.enable=true \
    vendor.audio.feature.vbat.enable=true \
    vendor.audio.feature.wsa.enable=false \
    vendor.audio.flac.sw.decoder.24bit=true \
    vendor.audio.hw.aac.encoder=false \
    vendor.audio.offload.buffer.size.kb=32 \
    vendor.audio.offload.gapless.enabled=true \
    vendor.audio.offload.multiaac.enable=true \
    vendor.audio.offload.multiple.enabled=true \
    vendor.audio.offload.passthrough=false \
    vendor.audio.offload.track.enable=false \
    vendor.audio.parser.ip.buffer.size=0 \
    vendor.audio.safx.pbe.enabled=false \
    vendor.audio.spkr_prot.tx.sampling_rate=48000 \
    vendor.audio.tunnel.encode=false \
    vendor.audio.use.sw.alac.decoder=true \
    vendor.audio.use.sw.ape.decoder=true

# Bluetooth
PRODUCT_PRODUCT_PROPERTIES += \
    bluetooth.profile.asha.central.enabled=true \
    bluetooth.profile.a2dp.source.enabled=true \
    bluetooth.profile.avrcp.target.enabled=true \
    bluetooth.profile.bap.broadcast.assist.enabled=true \
    bluetooth.profile.bap.unicast.server.enabled=true \
    bluetooth.profile.bas.client.enabled=true \
    bluetooth.profile.csip.set_coordinator.enabled=true \
    bluetooth.profile.gatt.enabled=true \
    bluetooth.profile.hap.client.enabled=true \
    bluetooth.profile.hfp.ag.enabled=true \
    bluetooth.profile.hid.device.enabled=true \
    bluetooth.profile.hid.host.enabled=true \
    bluetooth.profile.map.server.enabled=true \
    bluetooth.profile.mcp.server.enabled=true \
    bluetooth.profile.opp.enabled=true \
    bluetooth.profile.pan.nap.enabled=true \
    bluetooth.profile.pan.panu.enabled=true \
    bluetooth.profile.pbap.server.enabled=true \
    bluetooth.profile.sap.server.enabled=true \
    bluetooth.profile.tbs.server.enabled=true \
    bluetooth.profile.vc.server.enabled=true

PRODUCT_PROPERTY_OVERRIDES += \
    persist.vendor.qcom.bluetooth.aac_frm_ctl.enabled=true \
    vendor.qcom.bluetooth.soc=cherokee

# Camera
PRODUCT_PROPERTY_OVERRIDES += \
    persist.camera.stats.test=5 \
    persist.camera.xm.green.b=0.96 \
    persist.camera.xm.green.r=0.97 \
    persist.vendor.camera.HAL3.enabled=1 \
    persist.vendor.camera.set.afd=4 \
    vidc.enc.dcvs.extra-buff-count=2

PRODUCT_SYSTEM_DEFAULT_PROPERTIES += \
    vendor.camera.aux.packagelist=com.android.camera,com.android.camera2

# Charger
PRODUCT_PRODUCT_PROPERTIES += \
    ro.charger.enable_suspend=true

# Chipset
PRODUCT_PRODUCT_PROPERTIES += \
    ro.soc.manufacturer=Qualcomm \
    ro.soc.model=MSM8998

# CNE
PRODUCT_PROPERTY_OVERRIDES += \
    persist.vendor.cne.feature=1

# Display
PRODUCT_PROPERTY_OVERRIDES += \
    debug.cpurend.vsync=false \
    debug.renderengine.backend=threaded \
    debug.sf.enable_hwc_vds=1 \
    debug.sf.hw=1 \
    ro.opengles.version=196610 \
    vendor.display.disable_avr=1 \
    vendor.display.disable_partial_split=1 \
    vendor.display.disable_rotator_downscale=1 \
    vendor.display.disable_scaler=1 \
    vendor.display.disable_skip_validate=1 \
    vendor.display.enable_default_color_mode=1 \
    vendor.display.perf_hint_window=50 \
    vendor.gralloc.enable_fb_ubwc=1

# DPM
PRODUCT_SYSTEM_DEFAULT_PROPERTIES += \
    persist.vendor.dpm.feature=11

# FRP
PRODUCT_PROPERTY_OVERRIDES += \
    ro.frp.pst=/dev/block/platform/soc/1da4000.ufshc/by-name/frp

# IMS
PRODUCT_PROPERTY_OVERRIDES += \
    persist.dbg.volte_avail_ovr=1 \
    persist.dbg.vt_avail_ovr=1 \
    persist.dbg.wfc_avail_ovr=1 \
    persist.vendor.qti.telephony.vt_cam_interface=1

# I/O scheduler
PRODUCT_DEFAULT_PROPERTY_OVERRIDES += \
    sys.io.scheduler=bfq

# Media
PRODUCT_PROPERTY_OVERRIDES += \
    debug.stagefright.omx_default_rank.sw-audio=1 \
    debug.stagefright.omx_default_rank=0

# Perf
PRODUCT_PROPERTY_OVERRIDES += \
    ro.vendor.extension_library=libqti-perfd-client.so \
    ro.vendor.qti.am.reschedule_service=true

# Radio
PRODUCT_PROPERTY_OVERRIDES += \
    persist.radio.multisim.config=dsds \
    persist.vendor.data.mode=concurrent \
    persist.vendor.radio.apm_sim_not_pwdn=1 \
    persist.vendor.radio.custom_ecc=1 \
    persist.vendor.radio.force_on_dc=true \
    persist.vendor.radio.mt_sms_ack=30 \
    persist.vendor.radio.rat_on=combine \
    persist.vendor.radio.redir_party_num=1 \
    persist.vendor.radio.report_codec=1 \
    persist.vendor.radio.sib16_support=1 \
    ro.telephony.default_cdma_sub=0 \
    ro.telephony.default_network=22,22 \
    ro.vendor.use_data_netmgrd=true \
    telephony.lteOnCdmaDevice=1 \
    vendor.rild.libpath=/vendor/lib64/libril-wrapper.so \
    vendor.voice.path.for.pcm.voip=true

# Sensors
PRODUCT_PROPERTY_OVERRIDES += \
    ro.vendor.sdk.sensors.gestures=false \
    ro.vendor.sensors.cfos=false \
    ro.vendor.sensors.cmc=false \
    ro.vendor.sensors.dev_ori=false \
    ro.vendor.sensors.dpc=true \
    ro.vendor.sensors.facing=false \
    ro.vendor.sensors.iod=false \
    ro.vendor.sensors.mot_detect=true \
    ro.vendor.sensors.multishake=true \
    ro.vendor.sensors.pmd=false \
    ro.vendor.sensors.pug=true \
    ro.vendor.sensors.spg=false \
    ro.vendor.sensors.sta_detect=true \
    ro.vendor.sensors.taptap_gesture=true \
    ro.xiaomi.sar_fusion=true

# SurfaceFlinger
PRODUCT_DEFAULT_PROPERTY_OVERRIDES += \
    ro.surface_flinger.force_hwc_copy_for_virtual_displays=true \
    ro.surface_flinger.max_virtual_display_dimension=4096 \
    ro.surface_flinger.protected_contents=true

PRODUCT_PROPERTY_OVERRIDES += \
    ro.surface_flinger.max_frame_buffer_acquired_buffers=3

# Time services
PRODUCT_PROPERTY_OVERRIDES += \
    persist.vendor.delta_time.enable=true

# Wlan
PRODUCT_PROPERTY_OVERRIDES += \
    wifi.interface=wlan0

# Zygote preforking
PRODUCT_PROPERTY_OVERRIDES += \
    persist.device_config.runtime_native.usap_pool_enabled=true
