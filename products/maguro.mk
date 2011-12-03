# Inherit AOSP device configuration for maguro.
$(call inherit-product, device/samsung/maguro/full_maguro.mk)

# Inherit common product files.
$(call inherit-product, vendor/pete/products/common.mk)

# Setup device specific product configuration.
PRODUCT_NAME := pete_maguro
PRODUCT_BRAND := google
PRODUCT_DEVICE := maguro
PRODUCT_MODEL := Galaxy Nexus
PRODUCT_MANUFACTURER := samsung

PRODUCT_BUILD_PROP_OVERRIDES := PRODUCT_NAME=yakju BUILD_ID=ITL41F BUILD_FINGERPRINT=google/yakju/maguro:4.0.1/ITL41F/228551:user/release-keys PRIVATE_BUILD_DESC="yakju-user 4.0.1 ITL41F 228551 release-keys" BUILD_NUMBER=228551 BUILD_UTC_DATE=1321928358

# Inherit common build.prop overrides
-include vendor/pete/products/common_versions.mk

# Copy maguro specific prebuilt files
PRODUCT_COPY_FILES +=  \
    vendor/pete/proprietary/maguro/app/Thinkfree.apk:system/app/Thinkfree.apk \
    vendor/pete/proprietary/maguro/lib/libfrsdk.so:system/lib/libfrsdk.so \
    vendor/pete/proprietary/maguro/lib/libgcomm_jni.so:system/lib/libgcomm_jni.so \
    vendor/pete/proprietary/maguro/media/bootanimation.zip:system/media/bootanimation.zip \
    vendor/pete/proprietary/maguro/media/LMprec_508.emd:system/media/LMprec_508.emd \
    vendor/pete/proprietary/maguro/media/PFFprec_600.emd:system/media/PFFprec_600.emd \
    vendor/pete/proprietary/maguro/vendor/etc/smc_normal_world_android_cfg.ini:system/vendor/etc/smc_normal_world_android_cfg.ini \
    vendor/pete/proprietary/maguro/vendor/firmware/smc_pa_wvdrm.ift:system/vendor/firmware/smc_pa_wvdrm.ift \
    vendor/pete/proprietary/maguro/vendor/lib/libwvdrm_L1.so:system/vendor/lib/libwvdrm_L1.so \
    vendor/pete/proprietary/maguro/vendor/lib/libwvm.so:system/vendor/lib/libwvm.so \
    vendor/pete/proprietary/maguro/vendor/lib/libWVStreamControlAPI_L1.so:system/vendor/lib/libWVStreamControlAPI_L1.so \
    vendor/pete/proprietary/maguro/vendor/lib/drm/libdrmwvmplugin.so:system/vendor/lib/drm/libdrmwvmplugin.so \
    vendor/pete/proprietary/common/app/Microbes.apk:system/app/Microbes.apk \
    vendor/pete/proprietary/common/etc/permissions/com.google.android.media.effects.xml:system/etc/permissions/com.google.android.media.effects.xml \
    vendor/pete/proprietary/common/etc/permissions/com.google.android.nfc_extras.xml:system/etc/permissions/com.google.android.nfc_extras.xml \
    vendor/pete/proprietary/common/etc/permissions/com.google.widevine.software.drm.xml:system/etc/permissions/com.google.widevine.software.drm.xml \
    vendor/pete/proprietary/common/framework/com.google.android.media.effects.jar:system/framework/com.google.android.media.effects.jar \
    vendor/pete/proprietary/common/framework/com.android.nfc_extras.jar:system/framework/com.android.nfc_extras.jar \
    vendor/pete/proprietary/common/framework/com.google.widevine.software.drm.jar:system/framework/com.google.widevine.software.drm.jar \
    vendor/pete/proprietary/common/lib/libearthmobile.so:system/lib/libearthmobile.so \
    vendor/pete/proprietary/common/lib/libmicrobes_jni.so:system/lib/libmicrobes_jni.so

# Inherit Face lock security blobs
-include vendor/pete/products/common_facelock.mk
