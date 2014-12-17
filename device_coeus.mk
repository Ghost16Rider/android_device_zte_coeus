$(call inherit-product, $(SRC_TARGET_DIR)/product/languages_full.mk)
$(call inherit-product, vendor/cm/config/common.mk)

# The gps config appropriate for this device
$(call inherit-product, device/common/gps/gps_us_supl.mk)

$(call inherit-product-if-exists, vendor/zte/coeus/coeus-vendor.mk)

DEVICE_PACKAGE_OVERLAYS += device/zte/coeus/overlay

$(call inherit-product, frameworks/native/build/phone-xhdpi-1024-dalvik-heap.mk)

#Kernel Modules
$(call inherit-product-if-exists, $(LOCAL_PATH)/prebuilts/lib/modules/modules.mk)

#prebuilts/root
PRODUCT_COPY_FILES += \
    $(LOCAL_PATH)/prebuilts/root/fstab.qcom:root/fstab.qcom \
    $(LOCAL_PATH)/prebuilts/root/init.carrier.rc:root/init.carrier.rc \
    $(LOCAL_PATH)/prebuilts/root/init.qcom.class_core.sh:root/init.qcom.class_core.sh \
    $(LOCAL_PATH)/prebuilts/root/init.qcom.class_main.sh:root/init.qcom.class_main.sh \
    $(LOCAL_PATH)/prebuilts/root/init.qcom.early_boot.sh:root/init.qcom.early_boot.sh \
    $(LOCAL_PATH)/prebuilts/root/init.qcom.lpm_boot.sh:root/init.qcom.lpm_boot.sh \
    $(LOCAL_PATH)/prebuilts/root/init.qcom.rc:root/init.qcom.rc \
    $(LOCAL_PATH)/prebuilts/root/init.qcom.sh:root/init.qcom.sh \
    $(LOCAL_PATH)/prebuilts/root/init.qcom.syspart_fixup.sh:root/init.qcom.syspart_fixup.sh \
    $(LOCAL_PATH)/prebuilts/root/init.qcom.usb.rc:root/init.qcom.usb.rc \
    $(LOCAL_PATH)/prebuilts/root/init.qcom.usb.sh:root/init.qcom.usb.sh \
    $(LOCAL_PATH)/prebuilts/root/init.target.rc:root/init.target.rc \
    $(LOCAL_PATH)/prebuilts/root/logo.bmp:root/logo.bmp \
    $(LOCAL_PATH)/prebuilts/root/lpm.rc:root/lpm.rc \
    $(LOCAL_PATH)/prebuilts/root/ueventd.qcom.rc:root/ueventd.qcom.rc \
    $(LOCAL_PATH)/prebuilts/root/res/images/charger/battery_0.png:root/res/images/charger/battery_0.png \
    $(LOCAL_PATH)/prebuilts/root/res/images/charger/battery_1.png:root/res/images/charger/battery_1.png \
    $(LOCAL_PATH)/prebuilts/root/res/images/charger/battery_2.png:root/res/images/charger/battery_2.png \
    $(LOCAL_PATH)/prebuilts/root/res/images/charger/battery_3.png:root/res/images/charger/battery_3.png \
    $(LOCAL_PATH)/prebuilts/root/res/images/charger/battery_4.png:root/res/images/charger/battery_4.png \
    $(LOCAL_PATH)/prebuilts/root/res/images/charger/battery_5.png:root/res/images/charger/battery_5.png \
    $(LOCAL_PATH)/prebuilts/root/res/images/charger/battery_charge.png:root/res/images/charger/battery_charge.png \
    $(LOCAL_PATH)/prebuilts/root/res/images/charger/battery_fail.png:root/res/images/charger/battery_fail.png

# Recovery
PRODUCT_COPY_FILES += \
    $(LOCAL_PATH)/recovery/postrecoveryboot.sh:recovery/root/sbin/postrecoveryboot.sh \
    $(LOCAL_PATH)/recovery/postrecoveryboot.sh:recovery/system/bin/postrecoveryboot.sh \
    $(LOCAL_PATH)/recovery/root/init.recovery.qcom.rc:recovery/root/init.recovery.qcom.rc \
    $(LOCAL_PATH)/recovery/root/init.recovery.rc:recovery/root/init.recovery.rc

$(call inherit-product, build/target/product/full.mk)

PRODUCT_TAGS += dalvik.gc.type-precise

PRODUCT_PROPERTY_OVERRIDES += dalvik.vm.execution-mode=int:jit \
    ro.telephony.call_ring.multiple=false \
    ro.telephony.call_ring.delay=5000 \
    dalvik.vm.dexopt-flags=m=y,u=n,v=a,o=v \
    debug.enabletr=true \
    persist.sys.use_dithering=0 \
    ro.com.google.locationfeatures=1 \
    mobiledata.interfaces = wlan0,rmnet0 \
    ro.build.baseband_version=N861B01

# Provides overrides to configure the Dalvik heap for a standard tablet device.
PRODUCT_PROPERTY_OVERRIDES += \
    dalvik.vm.heapstartsize=8m  \
    dalvik.vm.heapgrowthlimit=64m \
    dalvik.vm.heapsize=256m

#LLVM for RenderScript
LLVM_ROOT_PATH := external/llvm

# These are the hardware-specific features
PRODUCT_COPY_FILES += \
    frameworks/native/data/etc/handheld_core_hardware.xml:system/etc/permissions/handheld_core_hardware.xml \
    frameworks/native/data/etc/android.hardware.telephony.cdma.xml:system/etc/permissions/android.hardware.telephony.cdma.xml \
    frameworks/native/data/etc/android.hardware.camera.xml:system/etc/permissions/android.hardware.camera.xml \
    frameworks/native/data/etc/android.hardware.camera.autofocus.xml:system/etc/permissions/android.hardware.camera.autofocus.xml \
    frameworks/native/data/etc/android.hardware.camera.front.xml:system/etc/permissions/android.hardware.camera.front.xml \
    frameworks/native/data/etc/android.hardware.location.xml:system/etc/permissions/android.hardware.location.xml \
    frameworks/native/data/etc/android.hardware.location.gps.xml:system/etc/permissions/android.hardware.location.gps.xml \
    frameworks/native/data/etc/android.hardware.wifi.xml:system/etc/permissions/android.hardware.wifi.xml \
    frameworks/native/data/etc/android.hardware.sensor.proximity.xml:system/etc/permissions/android.hardware.sensor.proximity.xml \
    frameworks/native/data/etc/android.hardware.sensor.light.xml:system/etc/permissions/android.hardware.sensor.light.xml \
    frameworks/native/data/etc/android.hardware.sensor.gyroscope.xml:system/etc/permissions/android.hardware.sensor.gyroscope.xml \
    frameworks/native/data/etc/android.hardware.sensor.compass.xml:system/etc/permissions/android.hardware.sensor.compass.xml \
    frameworks/native/data/etc/android.hardware.sensor.accelerometer.xml:system/etc/permissions/android.hardware.sensor.accelerometer.xml \
    frameworks/native/data/etc/android.hardware.sensor.light.xml:system/etc/permissions/android.hardware.sensor.light.xml \
    frameworks/native/data/etc/android.hardware.touchscreen.xml:system/etc/permissions/android.hardware.touchscreen.xml \
    frameworks/native/data/etc/android.hardware.touchscreen.multitouch.xml:system/etc/permissions/android.hardware.touchscreen.multitouch.xml \
    frameworks/native/data/etc/android.hardware.touchscreen.multitouch.jazzhand.xml:system/etc/permissions/android.hardware.touchscreen.multitouch.jazzhand.xml \
    frameworks/native/data/etc/android.hardware.usb.accessory.xml:system/etc/permissions/android.hardware.usb.accessory.xml \
    frameworks/native/data/etc/android.hardware.usb.host.xml:system/etc/permissions/android.hardware.usb.host.xml \
    frameworks/native/data/etc/android.software.sip.xml:system/etc/permissions/android.software.sip.xml \
    frameworks/native/data/etc/android.software.sip.voip.xml:system/etc/permissions/android.software.sip.voip.xml \
    frameworks/native/data/etc/android.hardware.bluetooth.xml:system/etc/permissions/android.hardware.bluetooth.xml \
    frameworks/native/data/etc/android.hardware.audio.low_latency.xml:system/etc/permissions/android.hardware.audio.low_latency.xml \
    frameworks/native/data/etc/android.hardware.telephony.gsm.xml:system/etc/permissions/android.hardware.telephony.gsm.xml


#Add to build
PRODUCT_PACKAGES += \
    applypatch \
    ast-mm-vdec-omx-test \
    com.android.future.usb.accessory \
    libdivxdrmdecrypt \
    libinvensense_hal \
    liblasic \
    liblinenoise \
    libmemalloc \
    libmllite \
    libmlplatform \
    libmmjpeg_interface \
    libmm-video \
    libmm-omxcore \
    libOmxAacEnc \
    libOmxAmrEnc \
    libOmxCore \
    libOmxEvrcEnc \
    libOmxQcelp13Enc \
    libOmxVdec \
    libOmxVenc \
    libOmxVidEnc \
    libOpenMAXAL \
    libOpenSLES \
    librs_jni \
    libmedia_jni \
    libstagefrighthw \
    mm-vdec-omx-property-mgr \
    mm-vdec-omx-test \
    mm-venc-omx-test \
    mm-venc-omx-test720p \
    mm-video-driver-test \
    mm-video-encdrv-test \
    libdashplayer \
    libaudio-resampler

# Filesystem management tools
PRODUCT_PACKAGES += \
    make_ext4fs \
    setup_fs

# Display
PRODUCT_PACKAGES += \
    copybit.msm8960 \
    gralloc.msm8960 \
    hwcomposer.msm8960 \
    libgenlock \
    liboverlay

## Bluetooth
PRODUCT_PACKAGES += \
    hciattach \
    hciconfig \
    hcitool \
    hdmid

# Keylayouts
PRODUCT_COPY_FILES += \
    $(LOCAL_PATH)/prebuilts/usr/keylayout/atmel_mxt_ts.kl:system/usr/keylayout/atmel_mxt_ts.kl \
    $(LOCAL_PATH)/prebuilts/usr/keylayout/gpio-keys.kl:system/usr/keylayout/gpio-keys.kl \
    $(LOCAL_PATH)/prebuilts/usr/keylayout/philips_remote_ir.kl:system/usr/keylayout/philips_remote_ir.kl \
    $(LOCAL_PATH)/prebuilts/usr/keylayout/zte_remote_ir.kl:system/usr/keylayout/zte_remote_ir.kl \
    $(LOCAL_PATH)/prebuilts/usr/keylayout/sec_keys.kl:system/usr/keylayout/sec_keys.kl \
    $(LOCAL_PATH)/prebuilts/usr/keylayout/sec_powerkey.kl:system/usr/keylayout/sec_powerkey.kl \
    $(LOCAL_PATH)/prebuilts/usr/keylayout/sec_touchkey.kl:system/usr/keylayout/sec_touchkey.kl \
    $(LOCAL_PATH)/prebuilts/usr/keylayout/sii9234_rcp.kl:system/usr/keylayout/sii9234_rcp.kl \
    $(LOCAL_PATH)/prebuilts/usr/keylayout/ue_rf4ce_remote.kl:system/usr/keylayout/ue_rf4ce_remote.kl \
    $(LOCAL_PATH)/prebuilts/usr/keylayout/AVRCP.kl:system/usr/keylayout/AVRCP.kl \
    $(LOCAL_PATH)/prebuilts/usr/keylayout/Generic.kl:system/usr/keylayout/Generic.kl \
    $(LOCAL_PATH)/prebuilts/usr/keylayout/cyttsp-i2c.kl:system/usr/keylayout/cyttsp-i2c.kl \
    $(LOCAL_PATH)/prebuilts/usr/keylayout/keypad_8960.kl:system/usr/keylayout/keypad_8960.kl \
    $(LOCAL_PATH)/prebuilts/usr/keylayout/keypad_8960_liquid.kl:system/usr/keylayout/keypad_8960_liquid.kl

#APN FOR AIO
PRODUCT_COPY_FILES += \
    $(LOCAL_PATH)/prebuilts/etc/apns-conf.xml:system/etc/apns-conf.xml

# GPS
PRODUCT_PACKAGES += \
    gps.default

PRODUCT_COPY_FILES += \
    $(LOCAL_PATH)/prebuilts/etc/gps.conf:system/etc/gps.conf \
    $(LOCAL_PATH)/prebuilts/bin/location-mq:system/bin/location-mq \
    $(LOCAL_PATH)/prebuilts/bin/wiperiface_v02:system/bin/wiperiface_v02 \
    $(LOCAL_PATH)/prebuilts/lib/libloc_api_v02.so:system/lib/libloc_api_v02.so \
    $(LOCAL_PATH)/prebuilts/lib/libgeofence.so:system/lib/libgeofence.so

# Audio
PRODUCT_PACKAGES += \
    audio_policy.msm7x30 \
    audio.primary.msm7x30 \
    audio.a2dp.default \
    libaudioutils \
    libaudioparameter


PRODUCT_COPY_FILES += \
    $(LOCAL_PATH)/prebuilts/etc/audio_policy.conf:system/etc/audio_policy.conf \
    $(LOCAL_PATH)/prebuilts/etc/audio_effects.conf:system/vendor/etc/audio_effects.conf \
    $(LOCAL_PATH)/prebuilts/lib/libaudioalsa.so:obj/lib/libaudioalsa.so \
    $(LOCAL_PATH)/prebuilts/lib/libaudioalsa.so:system/lib/libaudioalsa.so 

#Camera
PRODUCT_PACKAGES += \
     camera.msm8960

PRODUCT_COPY_FILES += \
    $(LOCAL_PATH)/prebuilts/lib/liboemcamera.so:system/lib/liboemcamera.so \
    $(LOCAL_PATH)/prebuilts/lib/liboemcamera.so:obj/lib/liboemcamera.so \
    $(LOCAL_PATH)/prebuilts/lib/hw/camera.vendor.msm7x30.so:system/lib/hw/camera.vendor.msm7x30.so \
    $(LOCAL_PATH)/prebuilts/lib/hw/camera.vendor.msm7x30.so:obj/lib/hw/camera.vendor.msm7x30.so \
    $(LOCAL_PATH)/prebuilts/lib/libmmjpeg.so:system/lib/libmmjpeg.so \
    $(LOCAL_PATH)/prebuilts/lib/libmmjpeg.so:obj/system/lib/libmmjpeg.so \
    $(LOCAL_PATH)/prebuilts/lib/libgemini.so:/system/lib/libgemini.so \
    $(LOCAL_PATH)/prebuilts/lib/libgemini.so:obj/system/lib/libgemini.so \
    $(LOCAL_PATH)/prebuilts/lib/libmmipl.so:/system/lib/libmmipl.so \
    $(LOCAL_PATH)/prebuilts/lib/libmmipl.so:obj/lib/libmmipl.so

# Camera
PRODUCT_PACKAGES += \
    camera.msm7x30

PRODUCT_COPY_FILES += \
    $(LOCAL_PATH)/prebuilts/lib/liboemcamera.so:system/lib/liboemcamera.so \
    $(LOCAL_PATH)/prebuilts/lib/liboemcamera.so:obj/lib/liboemcamera.so \
    $(LOCAL_PATH)/prebuilts/lib/hw/camera.vendor.msm7x30.so:system/lib/hw/camera.vendor.msm8960.so \
    $(LOCAL_PATH)/prebuilts/lib/hw/camera.vendor.msm7x30.so:obj/lib/hw/camera.vendor.msm8960.so \
    $(LOCAL_PATH)/prebuilts/lib/libmmjpeg.so:system/lib/libmmjpeg.so \
    $(LOCAL_PATH)/prebuilts/lib/libmmjpeg.so:obj/system/lib/libmmjpeg.so \
    $(LOCAL_PATH)/prebuilts/lib/libgemini.so:/system/lib/libgemini.so \
    $(LOCAL_PATH)/prebuilts/lib/libgemini.so:obj/system/lib/libgemini.so \
    $(LOCAL_PATH)/prebuilts/lib/libmmipl.so:/system/lib/libmmipl.so \
    $(LOCAL_PATH)/prebuilts/lib/libmmipl.so:obj/lib/libmmipl.so

#LibLight
PRODUCT_PACKAGES += \
    lights.msm8960

## Sensors
PRODUCT_COPY_FILES += \
    $(LOCAL_PATH)/prebuilts/lib/hw/sensors.msm8960.so:system/lib/hw/sensors.msm8960.so

# Wifi
PRODUCT_COPY_FILES += \
    $(LOCAL_PATH)/prebuilts/etc/init.qcom.wifi.sh:system/etc/init.qcom.wifi.sh \
    $(LOCAL_PATH)/prebuilts/etc/init.wlanprop.sh:system/etc/init.wlanprop.sh \
    $(LOCAL_PATH)/prebuilts/etc/firmware/wlan/prima/WCNSS_cfg.dat:system/etc/firmware/wlan/prima/WCNSS_cfg.dat \
    $(LOCAL_PATH)/prebuilts/etc/firmware/wlan/prima/WCNSS_qcom_cfg.ini:system/etc/firmware/wlan/prima/WCNSS_qcom_cfg.ini \
    $(LOCAL_PATH)/prebuilts/etc/firmware/wlan/prima/WCNSS_qcom_wlan_nv.bin:system/etc/firmware/wlan/prima/WCNSS_qcom_wlan_nv.bin \
    $(LOCAL_PATH)/prebuilts/etc/wifi/p2p_supplicant_overlay.conf:system/etc/wifi/p2p_supplicant_overlay.conf \
    $(LOCAL_PATH)/prebuilts/etc/wifi/wpa_supplicant_overlay.conf:system/etc/wifi/wpa_supplicant_overlay.conf \
    $(LOCAL_PATH)/prebuilts/etc/hostapd/hostapd_default.conf:system/etc/hostapd/hostapd_default.conf \
    $(LOCAL_PATH)/prebuilts/etc/hostapd/hostapd.accept:system/etc/hostapd/hostapd.accept \
    $(LOCAL_PATH)/prebuilts/etc/hostapd/hostapd.deny:system/etc/hostapd/hostapd.deny

PRODUCT_PACKAGES += \
    libwpa_client \
    libnetcmdiface

# Extra packages
PRODUCT_PACKAGES += \
    LiveWallpapers \
    LiveWallpapersPicker \
    Screenshot \
    Torch \
    Camera \
    Trebuchet

# Webkit
PRODUCT_PACKAGES += \
    libwebcore

# Media
PRODUCT_COPY_FILES += \
    $(LOCAL_PATH)/prebuilts/bin/drmdiagapp:system/bin/drmdiagapp \
    $(LOCAL_PATH)/prebuilts/etc/media_codecs.xml:system/etc/media_codecs.xml \
    $(LOCAL_PATH)/prebuilts/etc/media_profiles.xml:system/etc/media_profiles.xml \
    $(LOCAL_PATH)/prebuilts/lib/libDivxDrm.so:system/lib/libDivxDrm.so \
    $(LOCAL_PATH)/prebuilts/lib/libExtendedExtractor.so:system/lib/libExtendedExtractor.so \
    $(LOCAL_PATH)/prebuilts/lib/libSHIMDivxDrm.so:system/lib/libSHIMDivxDrm.so \
    $(LOCAL_PATH)/prebuilts/lib/libmmparser.so:system/lib/libmmparser.so \
    $(LOCAL_PATH)/prebuilts/lib/libmmosal.so:system/lib/libmmosal.so \
    $(LOCAL_PATH)/prebuilts/bin/qseecomd:system/bin/qseecomd \
    $(LOCAL_PATH)/prebuilts/lib/libdrmdecrypt.so:system/lib/libdrmdecrypt.so \
    $(LOCAL_PATH)/prebuilts/lib/libdrmfs.so:system/lib/libdrmfs.so \
    $(LOCAL_PATH)/prebuilts/lib/libdrmtime.so:system/lib/libdrmtime.so \
    $(LOCAL_PATH)/prebuilts/lib/libQSEEComAPI.so:system/lib/libQSEEComAPI.so \
    $(LOCAL_PATH)/prebuilts/lib/libWVStreamControlAPI_L3.so:system/lib/libWVStreamControlAPI_L3.so \
    $(LOCAL_PATH)/prebuilts/lib/libwvm.so:system/lib/libwvm.so \
    $(LOCAL_PATH)/prebuilts/etc/firmware/vidc.b00:system/etc/firmware/vidc.b00 \
    $(LOCAL_PATH)/prebuilts/etc/firmware/vidc.b01:system/etc/firmware/vidc.b01 \
    $(LOCAL_PATH)/prebuilts/etc/firmware/vidc.b02:system/etc/firmware/vidc.b02 \
    $(LOCAL_PATH)/prebuilts/etc/firmware/vidc.b03:system/etc/firmware/vidc.b03 \
    $(LOCAL_PATH)/prebuilts/etc/firmware/vidc.mdt:system/etc/firmware/vidc.mdt \
    $(LOCAL_PATH)/prebuilts/etc/firmware/vidc_1080p.fw:system/etc/firmware/vidc_1080p.fw \
    $(LOCAL_PATH)/prebuilts/etc/firmware/vidcfw.elf:system/etc/firmware/vidcfw.elf

# iptables
PRODUCT_PACKAGES += \
    ip6tables \
    iptables

# extra stuff
PRODUCT_COPY_FILES += \
    $(LOCAL_PATH)/prebuilts/bin/cnd:system/bin/cnd \
    $(LOCAL_PATH)/prebuilts/bin/akmd8962_new:system/bin/akmd8962_new \
    $(LOCAL_PATH)/prebuilts/bin/rmt_storage:system/bin/rmt_storage


# Bluetooth
PRODUCT_COPY_FILES += \
    $(LOCAL_PATH)/prebuilts/bin/bt_ssp_debug_mode.sh:system/bin/bt_ssp_debug_mode.sh \
    $(LOCAL_PATH)/prebuilts/bin/bt_testmode.sh:system/bin/bt_testmode.sh \
    $(LOCAL_PATH)/prebuilts/bin/bt_testmode_new.sh:system/bin/bt_testmode_new.sh \
    $(LOCAL_PATH)/prebuilts/bin/btnvtool:system/bin/btnvtool \
    $(LOCAL_PATH)/prebuilts/etc/init.ath3k.bt.sh:system/etc/init.ath3k.bt.sh \
    $(LOCAL_PATH)/prebuilts/etc/init.qcom.bt.sh:system/etc/init.qcom.bt.sh 

PRODUCT_BUILD_PROP_OVERRIDES += BUILD_UTC_DATE=0

PRODUCT_PROPERTY_OVERRIDES += \
    ro.bq.gpu_to_cpu_unsupported=1 \
    debug.hwc.fakevsync=1 \
    debug.sf.no_hw_vsync=1 \
    ro.zygote.disable_gl_preload=true

# GPS
PRODUCT_COPY_FILES += \
    $(LOCAL_PATH)/prebuilts/bin/location-mq:system/bin/location-mq \
    $(LOCAL_PATH)/prebuilts/bin/wiperiface_v02:system/bin/wiperiface_v02 \
    $(LOCAL_PATH)/prebuilts/lib/libloc_api_v02.so:system/lib/libloc_api_v02.so \
    $(LOCAL_PATH)/prebuilts/lib/libgeofence.so:system/lib/libgeofence.so

# FM
PRODUCT_COPY_FILES += \
    $(LOCAL_PATH)/prebuilts/etc/init.qcom.fm.sh:system/etc/init.qcom.fm.sh \
    $(LOCAL_PATH)/prebuilts/bin/fm_qsoc_patches:system/bin/fm_qsoc_patches

# Time services
PRODUCT_COPY_FILES += \
    $(LOCAL_PATH)/prebuilts/bin/time_daemon:system/bin/time_daemon \
    $(LOCAL_PATH)/prebuilts/lib/libtime_genoff.so:obj/lib/libtime_genoff.so \
    $(LOCAL_PATH)/prebuilts/lib/libtime_genoff.so:system/lib/libtime_genoff.so

# Radio
PRODUCT_COPY_FILES += \
    $(LOCAL_PATH)/prebuilts/bin/mdm_helper:system/bin/mdm_helper \
    $(LOCAL_PATH)/prebuilts/bin/ds_fmc_appd:system/bin/ds_fmc_appd \
    $(LOCAL_PATH)/prebuilts/bin/netmgrd:system/bin/netmgrd \
    $(LOCAL_PATH)/prebuilts/bin/qmuxd:system/bin/qmuxd \
    $(LOCAL_PATH)/prebuilts/bin/rild:system/bin/rild \
    $(LOCAL_PATH)/prebuilts/bin/rmt_storage:system/bin/rmt_storage \
    $(LOCAL_PATH)/prebuilts/bin/sec-ril:system/bin/sec-ril \
    $(LOCAL_PATH)/prebuilts/etc/init.qcom.mdm_links.sh:system/etc/init.qcom.mdm_links.sh \
    $(LOCAL_PATH)/prebuilts/etc/init.qcom.modem_links.sh:system/etc/init.qcom.modem_links.sh \
    $(LOCAL_PATH)/prebuilts/etc/init.qcom.ril.sh:system/etc/init.qcom.ril.sh \
    $(LOCAL_PATH)/prebuilts/lib/libcordon.so:system/lib/libcordon.so \
    $(LOCAL_PATH)/prebuilts/lib/libdiag.so:system/lib/libdiag.so \
    $(LOCAL_PATH)/prebuilts/lib/libdsi_netctrl.so:system/lib/libdsi_netctrl.so \
    $(LOCAL_PATH)/prebuilts/lib/libdsutils.so:system/lib/libdsutils.so \
    $(LOCAL_PATH)/prebuilts/lib/libqdutils.so:system/lib/libqdutils.so \
    $(LOCAL_PATH)/prebuilts/lib/libqdutils.so:system/obj/lib/libqdutils.so \
    $(LOCAL_PATH)/prebuilts/lib/libfactoryutil.so:system/lib/libfactoryutil.so \
    $(LOCAL_PATH)/prebuilts/lib/libnetmgr.so:system/lib/libnetmgr.so \
    $(LOCAL_PATH)/prebuilts/lib/libomission_avoidance.so:system/lib/libomission_avoidance.so \
    $(LOCAL_PATH)/prebuilts/lib/libqdi.so:system/lib/libqdi.so \
    $(LOCAL_PATH)/prebuilts/lib/libqdp.so:system/lib/libqdp.so \
    $(LOCAL_PATH)/prebuilts/lib/libreference-ril.so:system/lib/libreference-ril.so \
    $(LOCAL_PATH)/prebuilts/lib/libril-qcril-hook-oem.so:system/lib/libril-qcril-hook-oem.so \
    $(LOCAL_PATH)/prebuilts/lib/libsecril-client.so:system/lib/libsecril-client.so \
    $(LOCAL_PATH)/prebuilts/vendor/lib/libidl.so:system/vendor/lib/libidl.so \
    $(LOCAL_PATH)/prebuilts/vendor/lib/libqcci_legacy.so:system/vendor/lib/libqcci_legacy.so \
    $(LOCAL_PATH)/prebuilts/vendor/lib/libqmi.so:system/vendor/lib/libqmi.so \
    $(LOCAL_PATH)/prebuilts/vendor/lib/libqmi_cci.so:system/vendor/lib/libqmi_cci.so \
    $(LOCAL_PATH)/prebuilts/vendor/lib/libqmi_client_qmux.so:system/vendor/lib/libqmi_client_qmux.so \
    $(LOCAL_PATH)/prebuilts/vendor/lib/libqmi_common_so.so:system/vendor/lib/libqmi_common_so.so \
    $(LOCAL_PATH)/prebuilts/vendor/lib/libqmi_csi.so:system/vendor/lib/libqmi_csi.so \
    $(LOCAL_PATH)/prebuilts/vendor/lib/libqmi_encdec.so:system/vendor/lib/libqmi_encdec.so \
    $(LOCAL_PATH)/prebuilts/vendor/lib/libqmiservices.so:system/vendor/lib/libqmiservices.so \
    $(LOCAL_PATH)/prebuilts/lib/libril-qc-qmi-1.so:system/lib/libril-qc-qmi-1.so \
    $(LOCAL_PATH)/prebuilts/lib/libril.so:system/lib/libril.so \
    $(LOCAL_PATH)/prebuilts/lib/libsecnativefeature.so:system/lib/libsecnativefeature.so

# Sensors
PRODUCT_COPY_FILES += \
    $(LOCAL_PATH)/prebuilts/bin/akmd8962_new:system/bin/akmd8962_new \
    $(LOCAL_PATH)/prebuilts/bin/sensors.qcom:system/bin/sensors.qcom \
    $(LOCAL_PATH)/prebuilts/bin/proximity.init:system/bin/proximity.init \
    $(LOCAL_PATH)/prebuilts/bin/geomagneticd:system/bin/geomagneticd \
    $(LOCAL_PATH)/prebuilts/lib/hw/sensors.msm8960.so:system/lib/hw/sensors.msm8960.so

# Perf
PRODUCT_COPY_FILES += \
    $(LOCAL_PATH)/prebuilts/lib/libqc-opt.so:system/lib/libqc-opt.so
l

# Touch Screen IDC
PRODUCT_COPY_FILES += \
    $(LOCAL_PATH)/prebuilts/usr/idc/atmel-touchscreen.idc:system/usr/idc/atmel-touchscreen.idc \
    $(LOCAL_PATH)/prebuilts/usr/idc/cysp-touchscreen.idc:system/usr/idc/cysp-touchscreen.idc \
    $(LOCAL_PATH)/prebuilts/usr/idc/Fts-touchscreen.idc:system/usr/idc/Fts-touchscreen.idc \
    $(LOCAL_PATH)/prebuilts/usr/idc/syna-touchscreen.idc:system/usr/idc/syna-touchscreen.idc

# Thermal
PRODUCT_COPY_FILES += \
    $(LOCAL_PATH)/prebuilts/bin/hci_qcomm_init:system/bin/hci_qcomm_init \
    $(LOCAL_PATH)/prebuilts/bin/mpdecision:system/bin/mpdecision \
    $(LOCAL_PATH)/prebuilts/bin/thermald:system/bin/thermald \
    $(LOCAL_PATH)/prebuilts/etc/init.qcom.thermal_conf.sh:system/etc/init.qcom.thermal_conf.sh \
    $(LOCAL_PATH)/prebuilts/etc/init.qcom.thermald_conf.sh:system/etc/init.qcom.thermald_conf.sh \
    $(LOCAL_PATH)/prebuilts/etc/thermald-8064.conf:system/etc/thermald-8064.conf \
    $(LOCAL_PATH)/prebuilts/etc/thermald-8064ab.conf:system/etc/thermald-8064ab.conf \
    $(LOCAL_PATH)/prebuilts/etc/thermald-8260a.conf:system/etc/thermald-8260a.conf \
    $(LOCAL_PATH)/prebuilts/etc/thermald-8930.conf:system/etc/thermald-8930.conf \
    $(LOCAL_PATH)/prebuilts/etc/thermald-8930ab.conf:system/etc/thermald-8930ab.conf \
    $(LOCAL_PATH)/prebuilts/etc/thermald-8960.conf:system/etc/thermald-8960.conf \
    $(LOCAL_PATH)/prebuilts/etc/thermald-8960ab.conf:system/etc/thermald-8960ab.conf \
    $(LOCAL_PATH)/prebuilts/etc/thermal-engine-8064.conf:system/etc/thermal-engine-8064.conf \
    $(LOCAL_PATH)/prebuilts/etc/thermal-engine-8064ab.conf:system/etc/thermal-engine-8064ab.conf \
    $(LOCAL_PATH)/prebuilts/etc/thermal-engine-8930.conf:system/etc/thermal-engine-8930.conf \
    $(LOCAL_PATH)/prebuilts/etc/thermal-engine-8960.conf:system/etc/thermal-engine-8960.conf

# Misc Etc scripts
PRODUCT_COPY_FILES += \
    $(LOCAL_PATH)/prebuilts/etc/hcidump.sh:system/etc/hcidump.sh \
    $(LOCAL_PATH)/prebuilts/etc/init.crda.sh:system/etc/init.crda.sh \
    $(LOCAL_PATH)/prebuilts/etc/init.qcom.coex.sh:system/etc/init.qcom.coex.sh \
    $(LOCAL_PATH)/prebuilts/etc/init.qcom.post_boot.sh:system/etc/init.qcom.post_boot.sh \
    $(LOCAL_PATH)/prebuilts/etc/init.qcom.post_boot_ftm.sh:system/etc/init.qcom.post_boot_ftm.sh \
    $(LOCAL_PATH)/prebuilts/etc/init.qcom.sdio.sh:system/etc/init.qcom.sdio.sh \
    $(LOCAL_PATH)/prebuilts/etc/usf_post_boot.sh:system/etc/usf_post_boot.sh \
    $(LOCAL_PATH)/prebuilts/etc/init.qcom.efs.sync.sh:system/etc/init.qcom.efs.sync.sh

# CALLED IN INIT.RC MAY NOT NEED
PRODUCT_COPY_FILES += \
   $(LOCAL_PATH)/prebuilts/bin/mm-pp-daemon:system/bin/mm-pp-daemon \
    $(LOCAL_PATH)/prebuilts/bin/port-bridge:system/bin/port-bridge \
    $(LOCAL_PATH)/prebuilts/bin/qcks:system/bin/qcks \
    $(LOCAL_PATH)/prebuilts/bin/qmiproxy:system/bin/qmiproxy \
    $(LOCAL_PATH)/prebuilts/bin/qosmgr:system/bin/qosmgr \
    $(LOCAL_PATH)/prebuilts/bin/quipc_igsn:system/bin/quipc_igsn \
    $(LOCAL_PATH)/prebuilts/bin/quipc_main:system/bin/quipc_main \
    $(LOCAL_PATH)/prebuilts/bin/sapd:system/bin/sapd \
    $(LOCAL_PATH)/prebuilts/bin/usbhub_init:system/bin/usbhub_init \
    $(LOCAL_PATH)/prebuilts/bin/usf_epos:system/bin/usf_epos \
    $(LOCAL_PATH)/prebuilts/bin/usf_tester:system/bin/usf_tester \
    $(LOCAL_PATH)/prebuilts/bin/ztecfg:system/bin/ztecfg \
    $(LOCAL_PATH)/prebuilts/bin/zte_charger:system/bin/zte_charger \
    $(LOCAL_PATH)/prebuilts/bin/ztediag:system/bin/ztediag


PRODUCT_NAME := full_coeus
PRODUCT_DEVICE := coeus
