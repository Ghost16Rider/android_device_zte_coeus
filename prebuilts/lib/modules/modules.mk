# Kernel modules
PRODUCT_COPY_FILES += \
    $(LOCAL_PATH)/ansi_cprng.ko:system/lib/modules/ansi_cprng.ko \
    $(LOCAL_PATH)/dma_test.ko:system/lib/modules/dma_test.ko \
    $(LOCAL_PATH)/evbug.ko:system/lib/modules/evbug.ko \
    $(LOCAL_PATH)/gspca_main.ko:system/lib/modules/gspca_main.ko \
    $(LOCAL_PATH)/lcd.ko:system/lib/modules/lcd.ko \
    $(LOCAL_PATH)/mcdrvmodule.ko:system/lib/modules/mcdrvmodule.ko \
    $(LOCAL_PATH)/mckernelapi.ko:system/lib/modules/mckernelapi.ko \
    $(LOCAL_PATH)/mmc_test.ko:system/lib/modules/mmc_test.ko \
    $(LOCAL_PATH)/msm-buspm-dev.ko:system/lib/modules/msm-buspm-dev.ko \
    $(LOCAL_PATH)/qce40.ko:system/lib/modules/qce40.ko \
    $(LOCAL_PATH)/qcedev.ko:system/lib/modules/qcedev.ko \
    $(LOCAL_PATH)/qcrypto.ko:system/lib/modules/qcrypto.ko \
    $(LOCAL_PATH)/radio-iris-transport.ko:system/lib/modules/radio-iris-transport.ko \
    $(LOCAL_PATH)/reset_modem.ko:system/lib/modules/reset_modem.ko \
    $(LOCAL_PATH)/scsi_wait_scan.ko:system/lib/modules/scsi_wait_scan.ko \
    $(LOCAL_PATH)/spidev.ko:system/lib/modules/spidev.ko \
    $(LOCAL_PATH)/wlan.ko:system/lib/modules/wlan.ko
