# Kernel
PRODUCT_COPY_FILES += \
    $(LOCAL_PATH)/ramdisk/fstab.qcom:root/fstab.qcom \
    $(LOCAL_PATH)/ramdisk/init.carrier.rc:root/init.carrier.rc \
    $(LOCAL_PATH)/ramdisk/init.qcom.class_core.sh:root/init.qcom.class_core.sh \
    $(LOCAL_PATH)/ramdisk/init.qcom.class_main.sh:root/init.qcom.class_main.sh \
    $(LOCAL_PATH)/ramdisk/init.qcom.early_boot.sh:root/init.qcom.early_boot.sh \
    $(LOCAL_PATH)/ramdisk/init.qcom.lpm_boot.sh:root/init.qcom.lpm_boot.sh \
    $(LOCAL_PATH)/ramdisk/init.qcom.rc:root/init.qcom.rc \
    $(LOCAL_PATH)/ramdisk/init.qcom.sh:root/init.qcom.sh \
    $(LOCAL_PATH)/ramdisk/init.qcom.syspart_fixup.sh:root/init.qcom.syspart_fixup.sh \
    $(LOCAL_PATH)/ramdisk/init.qcom.usb.rc:root/init.qcom.usb.rc \
    $(LOCAL_PATH)/ramdisk/init.qcom.usb.sh:root/init.qcom.usb.sh \
    $(LOCAL_PATH)/ramdisk/init.target.rc:root/init.target.rc \
    $(LOCAL_PATH)/ramdisk/logo.bmp:root/logo.bmp \
    $(LOCAL_PATH)/ramdisk/lpm.rc:root/lpm.rc \
    $(LOCAL_PATH)/ramdisk/ueventd.qcom.rc:root/ueventd.qcom.rc \
    $(LOCAL_PATH)/ramdisk/res/images/charger/battery_0.png:root/res/images/charger/battery_0.png \
    $(LOCAL_PATH)/ramdisk/res/images/charger/battery_1.png:root/res/images/charger/battery_1.png \
    $(LOCAL_PATH)/ramdisk/res/images/charger/battery_2.png:root/res/images/charger/battery_2.png \
    $(LOCAL_PATH)/ramdisk/res/images/charger/battery_3.png:root/res/images/charger/battery_3.png \
    $(LOCAL_PATH)/ramdisk/res/images/charger/battery_4.png:root/res/images/charger/battery_4.png \
    $(LOCAL_PATH)/ramdisk/res/images/charger/battery_5.png:root/res/images/charger/battery_5.png \
    $(LOCAL_PATH)/ramdisk/res/images/charger/battery_charge.png:root/res/images/charger/battery_charge.png \
    $(LOCAL_PATH)/ramdisk/res/images/charger/battery_fail.png:root/res/images/charger/battery_fail.png

# Recovery
PRODUCT_COPY_FILES += \
    $(LOCAL_PATH)/recovery/postrecoveryboot.sh:recovery/root/sbin/postrecoveryboot.sh \
    $(LOCAL_PATH)/recovery/postrecoveryboot.sh:recovery/system/bin/postrecoveryboot.sh \
    $(LOCAL_PATH)/recovery/root/init.recovery.qcom.rc:recovery/root/init.recovery.qcom.rc \
    $(LOCAL_PATH)/recovery/root/init.recovery.rc:recovery/root/init.recovery.rc

# Graphics
PRODUCT_COPY_FILES += \
$(LOCAL_PATH)/prebuilts/lib/egl/egl.cfg:system/lib/egl/egl.cfg \
    $(LOCAL_PATH)/prebuilts/lib/egl/eglsubAndroid.so:system/lib/egl/eglsubAndroid.so \
    $(LOCAL_PATH)/prebuilts/lib/egl/libEGL_adreno200.so:system/lib/egl/libEGL_adreno200.so \
    $(LOCAL_PATH)/prebuilts/lib/egl/libGLES_android.so:system/lib/egl/libGLES_android.so \
    $(LOCAL_PATH)/prebuilts/lib/egl/libGLESv1_CM_adreno200.so:system/lib/egl/libGLESv1_CM_adreno200.so \
    $(LOCAL_PATH)/prebuilts/lib/egl/libGLESv2_adreno200.so:system/lib/egl/libGLESv2_adreno200.so \
    $(LOCAL_PATH)/prebuilts/lib/egl/libq3dtools_adreno200.so:system/lib/egl/libq3dtools_adreno200.so \
    $(LOCAL_PATH)/prebuilts/etc/firmware/a300_pfp.fw:system/etc/firmware/a300_pfp.fw \
    $(LOCAL_PATH)/prebuilts/etc/firmware/a300_pm4.fw:system/etc/firmware/a300_pm4.fw \
    $(LOCAL_PATH)/prebuilts/etc/firmware/vidc_1080p.fw:system/etc/firmware/vidc_1080p.fw \
    $(LOCAL_PATH)/prebuilts/vendor/lib/egl/libGLESv2S3D_adreno.so:system/vendor/lib/egl/libGLESv2S3D_adreno.so \
    $(LOCAL_PATH)/prebuilts/vendor/lib/libadreno_utils.so:system/vendor/lib/libadreno_utils.so \
    $(LOCAL_PATH)/prebuilts/vendor/lib/libc2d30.so:system/vendor/lib/libc2d30.so \
    $(LOCAL_PATH)/prebuilts/vendor/lib/libc2d30-a3xx.so:system/vendor/lib/libc2d30-a3xx.so \
    $(LOCAL_PATH)/prebuilts/vendor/lib/libC2D2.so:system/vendor/lib/libC2D2.so \
    $(LOCAL_PATH)/prebuilts/vendor/lib/libCB.so:system/vendor/lib/libCB.so \
    $(LOCAL_PATH)/prebuilts/vendor/lib/libgsl.so:system/vendor/lib/libgsl.so \
    $(LOCAL_PATH)/prebuilts/vendor/lib/libllvm-a3xx.so:system/vendor/lib/libllvm-a3xx.so \
    $(LOCAL_PATH)/prebuilts/vendor/lib/libOpenCL.so:system/vendor/lib/libOpenCL.so \
    $(LOCAL_PATH)/prebuilts/vendor/lib/libOpenVG.so:system/vendor/lib/libOpenVG.so \
    $(LOCAL_PATH)/prebuilts/vendor/lib/libsc-a3xx.so:system/vendor/lib/libsc-a3xx.so \
    $(LOCAL_PATH)/prebuilts/lib/libI420colorconvert.so:system/lib/libI420colorconvert.so \
    $(LOCAL_PATH)/prebuilts/lib/libmm-color-convertor.so:system/lib/libmm-color-convertor.so

# Audio
PRODUCT_COPY_FILES += \
    $(LOCAL_PATH)/prebuilts/etc/audio_policy.conf:system/etc/audio_policy.conf \
    $(LOCAL_PATH)/prebuilts/etc/audio_policy_8064.conf:system/etc/audio_policy_8064.conf \
    $(LOCAL_PATH)/prebuilts/etc/init.qcom.audio.sh:system/etc/init.qcom.audio.sh \
    $(LOCAL_PATH)/prebuilts/etc/snd_soc_msm/snd_soc_msm:system/etc/snd_soc_msm/snd_soc_msm \
    $(LOCAL_PATH)/prebuilts/etc/snd_soc_msm/snd_soc_msm_2x:system/etc/snd_soc_msm/snd_soc_msm_2x \
    $(LOCAL_PATH)/prebuilts/etc/snd_soc_msm/snd_soc_msm_2x_auxpcm:system/etc/snd_soc_msm/snd_soc_msm_2x_auxpcm \
    $(LOCAL_PATH)/prebuilts/etc/snd_soc_msm/snd_soc_msm_2x_Fusion3:system/etc/snd_soc_msm/snd_soc_msm_2x_Fusion3 \
    $(LOCAL_PATH)/prebuilts/etc/snd_soc_msm/snd_soc_msm_2x_Fusion3_auxpcm:system/etc/snd_soc_msm/snd_soc_msm_2x_Fusion3_auxpcm \
    $(LOCAL_PATH)/prebuilts/etc/snd_soc_msm/snd_soc_msm_auxpcm:system/etc/snd_soc_msm/snd_soc_msm_auxpcm \
    $(LOCAL_PATH)/prebuilts/etc/snd_soc_msm/snd_soc_msm_Sitar:system/etc/snd_soc_msm/snd_soc_msm_Sitar \
    $(LOCAL_PATH)/prebuilts/etc/snd_soc_msm/snd_soc_msm_Sitar_auxpcm:system/etc/snd_soc_msm/snd_soc_msm_Sitar_auxpcm \
    $(LOCAL_PATH)/prebuilts/etc/snd_soc_msm/snd_soc_msm_Taiko:system/etc/snd_soc_msm/snd_soc_msm_Taiko \
    $(LOCAL_PATH)/prebuilts/etc/srs/srsmodels.lic:system/etc/srs/srsmodels.lic \
    $(LOCAL_PATH)/prebuilts/etc/srs/srs_processing.cfg:system/etc/srs/srs_processing.cfg \
    $(LOCAL_PATH)/prebuilts/lib/libacdbloader.so:system/lib/libacdbloader.so \
    $(LOCAL_PATH)/prebuilts/lib/libaudcal.so:system/lib/libaudcal.so \
    $(LOCAL_PATH)/prebuilts/lib/libcsd-client.so:system/lib/libcsd-client.so \
    $(LOCAL_PATH)/prebuilts/lib/hw/audio.primary.mpq8064.so:system/lib/hw/audio.primary.mpq8064.so \
    $(LOCAL_PATH)/prebuilts/lib/hw/audio_policy.mpq8064.so:system/lib/hw/audio_policy.mpq8064.so

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

# Camera
PRODUCT_COPY_FILES += \
    $(LOCAL_PATH)/prebuilts/app/GestureOverlayService.apk:system/app/GestureOverlayService.apk \
    $(LOCAL_PATH)/prebuilts/framework/GestureSDK.jar:system/framework/GestureSDK.jar \
    $(LOCAL_PATH)/prebuilts/bin/mm-gs-camctrl-test:system/bin/mm-gs-camctrl-test \
    $(LOCAL_PATH)/prebuilts/bin/mm-jpeg-dec-test:system/bin/mm-jpeg-dec-test \
    $(LOCAL_PATH)/prebuilts/bin/mm-jpeg-dec-test-client:system/bin/mm-jpeg-dec-test-client \
    $(LOCAL_PATH)/prebuilts/bin/mm-jpeg-enc-test:system/bin/mm-jpeg-enc-test \
    $(LOCAL_PATH)/prebuilts/bin/mm-jpeg-enc-test-client:system/bin/mm-jpeg-enc-test-client \
    $(LOCAL_PATH)/prebuilts/bin/mm-jps-enc-test:system/bin/mm-jps-enc-test \
    $(LOCAL_PATH)/prebuilts/bin/mm-mpo-dec-test:system/bin/mm-mpo-dec-test \
    $(LOCAL_PATH)/prebuilts/bin/mm-mpo-enc-test:system/bin/mm-mpo-enc-test \
    $(LOCAL_PATH)/prebuilts/bin/mm-qcamera-app:system/bin/mm-qcamera-app \
    $(LOCAL_PATH)/prebuilts/bin/mm-qcamera-daemon:system/bin/mm-qcamera-daemon \
    $(LOCAL_PATH)/prebuilts/bin/mm-qcamera-test:system/bin/mm-qcamera-test \
    $(LOCAL_PATH)/prebuilts/bin/mm-qcamera-testsuite-client:system/bin/mm-qcamera-testsuite-client \
    $(LOCAL_PATH)/prebuilts/bin/v4l2-qcamera-app:system/bin/v4l2-qcamera-app \
    $(LOCAL_PATH)/prebuilts/lib/libchromatix_ar0542_default_video.so:system/lib/libchromatix_ar0542_default_video.so \
    $(LOCAL_PATH)/prebuilts/lib/libchromatix_ar0542_preview.so:system/lib/libchromatix_ar0542_preview.so \
    $(LOCAL_PATH)/prebuilts/lib/libchromatix_ar0542_qtech_default_video.so:system/lib/libchromatix_ar0542_qtech_default_video.so \
    $(LOCAL_PATH)/prebuilts/lib/libchromatix_ar0542_qtech_preview.so:system/lib/libchromatix_ar0542_qtech_preview.so \
    $(LOCAL_PATH)/prebuilts/lib/libchromatix_ar0542_sunny_default_video.so:system/lib/libchromatix_ar0542_sunny_default_video.so \
    $(LOCAL_PATH)/prebuilts/lib/libchromatix_ar0542_sunny_preview.so:system/lib/libchromatix_ar0542_sunny_preview.so \
    $(LOCAL_PATH)/prebuilts/lib/libchromatix_hi542_default_video.so:system/lib/libchromatix_hi542_default_video.so \
    $(LOCAL_PATH)/prebuilts/lib/libchromatix_hi542_mcnex_default_video.so:system/lib/libchromatix_hi542_mcnex_default_video.so \
    $(LOCAL_PATH)/prebuilts/lib/libchromatix_hi542_mcnex_preview.so:system/lib/libchromatix_hi542_mcnex_preview.so \
    $(LOCAL_PATH)/prebuilts/lib/libchromatix_hi542_preview.so:system/lib/libchromatix_hi542_preview.so \
    $(LOCAL_PATH)/prebuilts/lib/libchromatix_hi542_qtech_default_video.so:system/lib/libchromatix_hi542_qtech_default_video.so \
    $(LOCAL_PATH)/prebuilts/lib/libchromatix_hi542_qtech_preview.so:system/lib/libchromatix_hi542_qtech_preview.so \
    $(LOCAL_PATH)/prebuilts/lib/libchromatix_hi542_sunny_default_video.so:system/lib/libchromatix_hi542_sunny_default_video.so \
    $(LOCAL_PATH)/prebuilts/lib/libchromatix_hi542_sunny_preview.so:system/lib/libchromatix_hi542_sunny_preview.so \
    $(LOCAL_PATH)/prebuilts/lib/libchromatix_imx074_default_video.so:system/lib/libchromatix_imx074_default_video.so \
    $(LOCAL_PATH)/prebuilts/lib/libchromatix_imx074_preview.so:system/lib/libchromatix_imx074_preview.so \
    $(LOCAL_PATH)/prebuilts/lib/libchromatix_imx074_video_hd.so:system/lib/libchromatix_imx074_video_hd.so \
    $(LOCAL_PATH)/prebuilts/lib/libchromatix_imx074_zsl.so:system/lib/libchromatix_imx074_zsl.so \
    $(LOCAL_PATH)/prebuilts/lib/libchromatix_imx091_default_video.so:system/lib/libchromatix_imx091_default_video.so \
    $(LOCAL_PATH)/prebuilts/lib/libchromatix_imx091_preview.so:system/lib/libchromatix_imx091_preview.so \
    $(LOCAL_PATH)/prebuilts/lib/libchromatix_imx091_video_hd.so:system/lib/libchromatix_imx091_video_hd.so \
    $(LOCAL_PATH)/prebuilts/lib/libchromatix_mt9e013_default_video.so:system/lib/libchromatix_mt9e013_default_video.so \
    $(LOCAL_PATH)/prebuilts/lib/libchromatix_mt9e013_preview.so:system/lib/libchromatix_mt9e013_preview.so \
    $(LOCAL_PATH)/prebuilts/lib/libchromatix_mt9e013_video_hfr.so:system/lib/libchromatix_mt9e013_video_hfr.so \
    $(LOCAL_PATH)/prebuilts/lib/libchromatix_ov2720_default_video.so:system/lib/libchromatix_ov2720_default_video.so \
    $(LOCAL_PATH)/prebuilts/lib/libchromatix_ov2720_hfr.so:system/lib/libchromatix_ov2720_hfr.so \
    $(LOCAL_PATH)/prebuilts/lib/libchromatix_ov2720_preview.so:system/lib/libchromatix_ov2720_preview.so \
    $(LOCAL_PATH)/prebuilts/lib/libchromatix_ov2720_zsl.so:system/lib/libchromatix_ov2720_zsl.so \
    $(LOCAL_PATH)/prebuilts/lib/libchromatix_ov5647_default_video.so:system/lib/libchromatix_ov5647_default_video.so \
    $(LOCAL_PATH)/prebuilts/lib/libchromatix_ov5647_preview.so:system/lib/libchromatix_ov5647_preview.so \
    $(LOCAL_PATH)/prebuilts/lib/libchromatix_ov8825_default_video.so:system/lib/libchromatix_ov8825_default_video.so \
    $(LOCAL_PATH)/prebuilts/lib/libchromatix_ov8825_mcnex_default_video.so:system/lib/libchromatix_ov8825_mcnex_default_video.so \
    $(LOCAL_PATH)/prebuilts/lib/libchromatix_ov8825_mcnex_preview.so:system/lib/libchromatix_ov8825_mcnex_preview.so \
    $(LOCAL_PATH)/prebuilts/lib/libchromatix_ov8825_mcnex_zsl.so:system/lib/libchromatix_ov8825_mcnex_zsl.so \
    $(LOCAL_PATH)/prebuilts/lib/libchromatix_ov8825_preview.so:system/lib/libchromatix_ov8825_preview.so \
    $(LOCAL_PATH)/prebuilts/lib/libchromatix_ov8825_qtech_default_video.so:system/lib/libchromatix_ov8825_qtech_default_video.so \
    $(LOCAL_PATH)/prebuilts/lib/libchromatix_ov8825_qtech_preview.so:system/lib/libchromatix_ov8825_qtech_preview.so \
    $(LOCAL_PATH)/prebuilts/lib/libchromatix_ov8825_qtech_zsl.so:system/lib/libchromatix_ov8825_qtech_zsl.so \
    $(LOCAL_PATH)/prebuilts/lib/libchromatix_ov8825_truly_default_video.so:system/lib/libchromatix_ov8825_truly_default_video.so \
    $(LOCAL_PATH)/prebuilts/lib/libchromatix_ov8825_truly_preview.so:system/lib/libchromatix_ov8825_truly_preview.so \
    $(LOCAL_PATH)/prebuilts/lib/libchromatix_ov8825_truly_zsl.so:system/lib/libchromatix_ov8825_truly_zsl.so \
    $(LOCAL_PATH)/prebuilts/lib/libchromatix_ov8825_zsl.so:system/lib/libchromatix_ov8825_zsl.so \
    $(LOCAL_PATH)/prebuilts/lib/libchromatix_ov8835_default_video.so:system/lib/libchromatix_ov8835_default_video.so \
    $(LOCAL_PATH)/prebuilts/lib/libchromatix_ov8835_liteon_default_video.so:system/lib/libchromatix_ov8835_liteon_default_video.so \
    $(LOCAL_PATH)/prebuilts/lib/libchromatix_ov8835_liteon_preview.so:system/lib/libchromatix_ov8835_liteon_preview.so \
    $(LOCAL_PATH)/prebuilts/lib/libchromatix_ov8835_liteon_zsl.so:system/lib/libchromatix_ov8835_liteon_zsl.so \
    $(LOCAL_PATH)/prebuilts/lib/libchromatix_ov8835_mcnex_default_video.so:system/lib/libchromatix_ov8835_mcnex_default_video.so \
    $(LOCAL_PATH)/prebuilts/lib/libchromatix_ov8835_mcnex_preview.so:system/lib/libchromatix_ov8835_mcnex_preview.so \
    $(LOCAL_PATH)/prebuilts/lib/libchromatix_ov8835_mcnex_zsl.so:system/lib/libchromatix_ov8835_mcnex_zsl.so \
    $(LOCAL_PATH)/prebuilts/lib/libchromatix_ov8835_preview.so:system/lib/libchromatix_ov8835_preview.so \
    $(LOCAL_PATH)/prebuilts/lib/libchromatix_ov8835_qtech_default_video.so:system/lib/libchromatix_ov8835_qtech_default_video.so \
    $(LOCAL_PATH)/prebuilts/lib/libchromatix_ov8835_qtech_preview.so:system/lib/libchromatix_ov8835_qtech_preview.so \
    $(LOCAL_PATH)/prebuilts/lib/libchromatix_ov8835_qtech_zsl.so:system/lib/libchromatix_ov8835_qtech_zsl.so \
    $(LOCAL_PATH)/prebuilts/lib/libchromatix_ov8835_sunny_default_video.so:system/lib/libchromatix_ov8835_sunny_default_video.so \
    $(LOCAL_PATH)/prebuilts/lib/libchromatix_ov8835_sunny_preview.so:system/lib/libchromatix_ov8835_sunny_preview.so \
    $(LOCAL_PATH)/prebuilts/lib/libchromatix_ov8835_sunny_zsl.so:system/lib/libchromatix_ov8835_sunny_zsl.so \
    $(LOCAL_PATH)/prebuilts/lib/libchromatix_ov8835_truly_default_video.so:system/lib/libchromatix_ov8835_truly_default_video.so \
    $(LOCAL_PATH)/prebuilts/lib/libchromatix_ov8835_truly_preview.so:system/lib/libchromatix_ov8835_truly_preview.so \
    $(LOCAL_PATH)/prebuilts/lib/libchromatix_ov8835_truly_zsl.so:system/lib/libchromatix_ov8835_truly_zsl.so \
    $(LOCAL_PATH)/prebuilts/lib/libchromatix_ov8835_zsl.so:system/lib/libchromatix_ov8835_zsl.so \
    $(LOCAL_PATH)/prebuilts/lib/libchromatix_ov9726_default_video.so:system/lib/libchromatix_ov9726_default_video.so \
    $(LOCAL_PATH)/prebuilts/lib/libchromatix_ov9726_preview.so:system/lib/libchromatix_ov9726_preview.so \
    $(LOCAL_PATH)/prebuilts/lib/libchromatix_s5k3l1yx_default_video.so:system/lib/libchromatix_s5k3l1yx_default_video.so \
    $(LOCAL_PATH)/prebuilts/lib/libchromatix_s5k3l1yx_hfr_60fps.so:system/lib/libchromatix_s5k3l1yx_hfr_60fps.so \
    $(LOCAL_PATH)/prebuilts/lib/libchromatix_s5k3l1yx_hfr_90fps.so:system/lib/libchromatix_s5k3l1yx_hfr_90fps.so \
    $(LOCAL_PATH)/prebuilts/lib/libchromatix_s5k3l1yx_hfr_120fps.so:system/lib/libchromatix_s5k3l1yx_hfr_120fps.so \
    $(LOCAL_PATH)/prebuilts/lib/libchromatix_s5k3l1yx_preview.so:system/lib/libchromatix_s5k3l1yx_preview.so \
    $(LOCAL_PATH)/prebuilts/lib/libchromatix_s5k3l1yx_video_hd.so:system/lib/libchromatix_s5k3l1yx_video_hd.so \
    $(LOCAL_PATH)/prebuilts/lib/libchromatix_s5k3l1yx_zsl.so:system/lib/libchromatix_s5k3l1yx_zsl.so \
    $(LOCAL_PATH)/prebuilts/lib/libchromatix_s5k4e1_default_video.so:system/lib/libchromatix_s5k4e1_default_video.so \
    $(LOCAL_PATH)/prebuilts/lib/libchromatix_s5k4e1_preview.so:system/lib/libchromatix_s5k4e1_preview.so \
    $(LOCAL_PATH)/prebuilts/lib/libchromatix_vx6953_default_video.so:system/lib/libchromatix_vx6953_default_video.so \
    $(LOCAL_PATH)/prebuilts/lib/libchromatix_vx6953_preview.so:system/lib/libchromatix_vx6953_preview.so \
    $(LOCAL_PATH)/prebuilts/lib/libgemini.so:system/lib/libgemini.so \
    $(LOCAL_PATH)/prebuilts/lib/libgesture_client.so:system/lib/libgesture_client.so \
    $(LOCAL_PATH)/prebuilts/lib/libgesture-core.so:system/lib/libgesture-core.so \
    $(LOCAL_PATH)/prebuilts/lib/libgestureservice.so:system/lib/libgestureservice.so \
    $(LOCAL_PATH)/prebuilts/lib/libimage-jpeg-dec-omx-comp.so:system/lib/libimage-jpeg-dec-omx-comp.so \
    $(LOCAL_PATH)/prebuilts/lib/libimage-jpeg-enc-omx-comp.so:system/lib/libimage-jpeg-enc-omx-comp.so \
    $(LOCAL_PATH)/prebuilts/lib/libimage-omx-common.so:system/lib/libimage-omx-common.so \
    $(LOCAL_PATH)/prebuilts/lib/libmercury.so:system/lib/libmercury.so \
    $(LOCAL_PATH)/prebuilts/lib/libmmcamera_faceproc.so:system/lib/libmmcamera_faceproc.so \
    $(LOCAL_PATH)/prebuilts/lib/libmmcamera_frameproc.so:system/lib/libmmcamera_frameproc.so \
    $(LOCAL_PATH)/prebuilts/lib/libmmcamera_hdr_lib.so:system/lib/libmmcamera_hdr_lib.so \
    $(LOCAL_PATH)/prebuilts/lib/libmmcamera_image_stab.so:system/lib/libmmcamera_image_stab.so \
    $(LOCAL_PATH)/prebuilts/lib/libmmcamera_interface.so:system/lib/libmmcamera_interface.so \
    $(LOCAL_PATH)/prebuilts/lib/libmmcamera_interface2.so:system/lib/libmmcamera_interface2.so \
    $(LOCAL_PATH)/prebuilts/lib/libmmcamera_plugin.so:system/lib/libmmcamera_plugin.so \
    $(LOCAL_PATH)/prebuilts/lib/libmmcamera_statsproc31.so:system/lib/libmmcamera_statsproc31.so \
    $(LOCAL_PATH)/prebuilts/lib/libmmcamera_wavelet_lib.so:system/lib/libmmcamera_wavelet_lib.so \
    $(LOCAL_PATH)/prebuilts/lib/libmmgesture_services.so:system/lib/libmmgesture_services.so \
    $(LOCAL_PATH)/prebuilts/lib/libmmgestures-linux.so:system/lib/libmmgestures-linux.so \
    $(LOCAL_PATH)/prebuilts/lib/libmmjpeg.so:system/lib/libmmjpeg.so \
    $(LOCAL_PATH)/prebuilts/lib/libmmjpeg_interface.so:system/lib/libmmjpeg_interface.so \
    $(LOCAL_PATH)/prebuilts/lib/libmmmpod.so:system/lib/libmmmpod.so \
    $(LOCAL_PATH)/prebuilts/lib/libmmstillomx.so:system/lib/libmmstillomx.so \
    $(LOCAL_PATH)/prebuilts/lib/liboemcamera.so:system/lib/liboemcamera.so \
    $(LOCAL_PATH)/prebuilts/lib/hw/gestures.msm8960.so:system/lib/hw/gestures.msm8960.so

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

# Bluetooth
PRODUCT_COPY_FILES += \
    $(LOCAL_PATH)/prebuilts/bin/bt_ssp_debug_mode.sh:system/bin/bt_ssp_debug_mode.sh \
    $(LOCAL_PATH)/prebuilts/bin/bt_testmode.sh:system/bin/bt_testmode.sh \
    $(LOCAL_PATH)/prebuilts/bin/bt_testmode_new.sh:system/bin/bt_testmode_new.sh \
    $(LOCAL_PATH)/prebuilts/bin/btnvtool:system/bin/btnvtool \
    $(LOCAL_PATH)/prebuilts/etc/init.ath3k.bt.sh:system/etc/init.ath3k.bt.sh \
    $(LOCAL_PATH)/prebuilts/etc/init.qcom.bt.sh:system/etc/init.qcom.bt.sh 

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
    $(LOCAL_PATH)/prebuilts/bin/bridgemgrd:system/bin/bridgemgrd \
    $(LOCAL_PATH)/prebuilts/bin/cnd:system/bin/cnd \
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

#APN FOR AIO
PRODUCT_COPY_FILES += \
    $(LOCAL_PATH)/prebuilts/etc/apns-conf.xml:system/etc/apns-conf.xml
