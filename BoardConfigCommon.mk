#
# Copyright (C) 2017 The LineageOS Project
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

PLATFORM_PATH := device/leeco/msm8996-common

TARGET_SPECIFIC_HEADER_PATH += $(PLATFORM_PATH)/include

BOARD_VENDOR := leeco

# Bootloader
TARGET_BOOTLOADER_BOARD_NAME := msm8996
TARGET_NO_BOOTLOADER := true

# Platform
TARGET_BOARD_PLATFORM := msm8996
TARGET_BOARD_PLATFORM_GPU := qcom-adreno530

# Architecture
TARGET_ARCH := arm64
TARGET_ARCH_VARIANT := armv8-a
TARGET_CPU_ABI := arm64-v8a
TARGET_CPU_ABI2 :=
TARGET_CPU_VARIANT := kryo

TARGET_2ND_ARCH := arm
TARGET_2ND_ARCH_VARIANT := armv7-a-neon
TARGET_2ND_CPU_ABI := armeabi-v7a
TARGET_2ND_CPU_ABI2 := armeabi
TARGET_2ND_CPU_VARIANT := kryo

TARGET_USES_64_BIT_BINDER := true

# Kernel
BOARD_KERNEL_BASE := 0x80000000
BOARD_KERNEL_PAGESIZE := 4096
BOARD_KERNEL_IMAGE_NAME := Image.gz-dtb
TARGET_KERNEL_ARCH := arm64
TARGET_KERNEL_HEADER_ARCH := arm64
TARGET_KERNEL_SOURCE := kernel/leeco/msm8996
TARGET_KERNEL_CROSS_COMPILE_PREFIX := aarch64-linux-android-

TARGET_COMPILE_WITH_MSM_KERNEL := true

# QCOM hardware
BOARD_USES_QCOM_HARDWARE := true

# ANT+
BOARD_ANT_WIRELESS_DEVICE := "qualcomm-hidl"

# Audio
#AUDIO_FEATURE_ENABLED_AAC_ADTS_OFFLOAD := true
AUDIO_FEATURE_ENABLED_ACDB_LICENSE := true
#AUDIO_FEATURE_ENABLED_APE_OFFLOAD := true
#AUDIO_FEATURE_ENABLED_ALAC_OFFLOAD := true
AUDIO_FEATURE_ENABLED_ANC_HEADSET := true
AUDIO_FEATURE_ENABLED_AUDIOSPHERE := true
AUDIO_FEATURE_ENABLED_COMPRESS_VOIP := true
AUDIO_FEATURE_ENABLED_DEV_ARBI := true
AUDIO_FEATURE_ENABLED_EXTN_FORMATS := true
AUDIO_FEATURE_ENABLED_FLAC_OFFLOAD := false
AUDIO_FEATURE_ENABLED_FLUENCE := true
AUDIO_FEATURE_ENABLED_HFP := true
AUDIO_FEATURE_ENABLED_KPI_OPTIMIZE := true
AUDIO_FEATURE_ENABLED_MULTI_VOICE_SESSIONS := true
AUDIO_FEATURE_ENABLED_NT_PAUSE_TIMEOUT := true
AUDIO_FEATURE_ENABLED_PCM_OFFLOAD := true
AUDIO_FEATURE_ENABLED_PCM_OFFLOAD_24 := true
AUDIO_FEATURE_ENABLED_PROXY_DEVICE := true
AUDIO_FEATURE_ENABLED_SPKR_PROTECTION := false
#AUDIO_FEATURE_ENABLED_VORBIS_OFFLOAD := true
#AUDIO_FEATURE_ENABLED_WMA_OFFLOAD := true
AUDIO_FEATURE_ENABLED_SOURCE_TRACKING := true
AUDIO_FEATURE_ENABLED_PLAYBACK_ULL := true

AUDIO_USE_LL_AS_PRIMARY_OUTPUT := true
TARGET_USES_QCOM_MM_AUDIO := true
#BOARD_SUPPORTS_SOUND_TRIGGER := true
BOARD_USES_ALSA_AUDIO := true
BOARD_USES_SRS_TRUEMEDIA := true

USE_CUSTOM_AUDIO_POLICY := 1
USE_XML_AUDIO_POLICY_CONF := 1

# Bionic
TARGET_LD_SHIM_LIBS := /system/vendor/lib/libmmcamera_ppeiscore.so|libshims_camera.so:/system/bin/mm-qcamera-daemon|libshims_qcamera-daemon.so

# Bluetooth
BOARD_HAS_QCA_BT_ROME := true
BOARD_HAVE_BLUETOOTH := true
BOARD_HAVE_BLUETOOTH_QCOM := true
QCOM_BT_USE_BTNV := true
QCOM_BT_USE_SMD_TTY := true

# Camera
USE_DEVICE_SPECIFIC_CAMERA := true
DEVICE_SPECIFIC_CAMERA_PATH := $(PLATFORM_PATH)/camera
TARGET_SUPPORT_HAL1 := false
TARGET_USES_MEDIA_EXTENSIONS := true
TARGET_USES_QTI_CAMERA2CLIENT := true
BOARD_QTI_CAMERA_32BIT_ONLY := true

# Charger
BOARD_CHARGER_ENABLE_SUSPEND := true
BOARD_CHARGER_DISABLE_INIT_BLANK := true
# Before enabling lineage charger you have to fix it!
WITH_LINEAGE_CHARGER := false

# Init
TARGET_INIT_VENDOR_LIB := libinit_leeco_msm8996
TARGET_RECOVERY_DEVICE_MODULES := libinit_leeco_msm8996

# Partitions
BOARD_BOOTIMAGE_PARTITION_SIZE := 67108864
BOARD_CACHEIMAGE_PARTITION_SIZE := 268435456
BOARD_CACHEIMAGE_FILE_SYSTEM_TYPE := ext4
BOARD_RECOVERYIMAGE_PARTITION_SIZE := 67108864
BOARD_FLASH_BLOCK_SIZE := 262144

# Power
TARGET_HAS_NO_WIFI_STATS := true
TARGET_USES_INTERACTION_BOOST := true

# CNE and DPM
BOARD_USES_QCNE := true

# Crypto
TARGET_HW_DISK_ENCRYPTION := true
TARGET_KEYMASTER_WAIT_FOR_QSEE := true

# Display
MAX_VIRTUAL_DISPLAY_DIMENSION := 4096
TARGET_FORCE_HWC_FOR_VIRTUAL_DISPLAYS := true

TARGET_USES_ION := true
TARGET_USES_NEW_ION_API :=true
TARGET_USES_GRALLOC1 := true
TARGET_USES_HWC2 := true
TARGET_USES_OVERLAY := true

MAX_EGL_CACHE_KEY_SIZE := 12*1024
MAX_EGL_CACHE_SIZE := 2048*1024

NUM_FRAMEBUFFER_SURFACE_BUFFERS := 3
SF_VSYNC_EVENT_PHASE_OFFSET_NS := 6000000
VSYNC_EVENT_PHASE_OFFSET_NS := 2000000

OVERRIDE_RS_DRIVER:= libRSDriver_adreno.so
USE_OPENGL_RENDERER := true

# Enable dexpreopt to speed boot time
ifeq ($(HOST_OS),linux)
  ifneq ($(TARGET_BUILD_VARIANT),eng)
    ifeq ($(WITH_DEXPREOPT),)
      WITH_DEXPREOPT := true
      WITH_DEXPREOPT_BOOT_IMG_AND_SYSTEM_SERVER_ONLY := true
    endif
  endif
endif

# Filesystem
TARGET_FS_CONFIG_GEN += $(PLATFORM_PATH)/config.fs

# GPS
BOARD_VENDOR_QCOM_GPS_LOC_API_HARDWARE := default
USE_DEVICE_SPECIFIC_GPS := true

TARGET_PLATFORM_DEVICE_BASE := /devices/soc/

# HIDL
DEVICE_MANIFEST_FILE := $(PLATFORM_PATH)/manifest.xml
DEVICE_MATRIX_FILE := $(PLATFORM_PATH)/compatibility_matrix.xml

# Keystore
TARGET_PROVIDES_KEYMASTER := true

# Lights
TARGET_PROVIDES_LIBLIGHT := true

# Media
TARGET_ENABLE_QC_AV_ENHANCEMENTS := true

# RIL
TARGET_RIL_VARIANT := caf

# Sensors
USE_SENSOR_MULTI_HAL := true

# Timeservice
BOARD_USES_QC_TIME_SERVICES := true

# Wifi
BOARD_HAS_QCOM_WLAN := true
BOARD_HAS_QCOM_WLAN_SDK := true
BOARD_WLAN_DEVICE := qcwcn
BOARD_HOSTAPD_DRIVER := NL80211
BOARD_HOSTAPD_PRIVATE_LIB := lib_driver_cmd_$(BOARD_WLAN_DEVICE)
BOARD_WPA_SUPPLICANT_DRIVER := NL80211
BOARD_WPA_SUPPLICANT_PRIVATE_LIB := lib_driver_cmd_$(BOARD_WLAN_DEVICE)
WIFI_DRIVER_FW_PATH_AP := "ap"
WIFI_DRIVER_FW_PATH_STA := "sta"
WIFI_DRIVER_FW_PATH_P2P := "p2p"
WPA_SUPPLICANT_VERSION := VER_0_8_X

#RECOVERY_VARIANT := twrp
BOARD_HAS_LARGE_FILESYSTEM := true
TARGET_USERIMAGES_USE_EXT4 := true
TARGET_USERIMAGES_USE_F2FS := true

ifeq ($(RECOVERY_VARIANT),twrp)
TARGET_RECOVERY_FSTAB := $(PLATFORM_PATH)/rootdir/recovery/twrp.fstab
BOARD_HAS_NO_REAL_SDCARD := true
TARGET_USE_CUSTOM_LUN_FILE_PATH := /sys/devices/soc/6a00000.ssusb/6a00000.dwc3/gadget/lun0/file
TW_THEME := portrait_hdpi
RECOVERY_SDCARD_ON_DATA := true
TARGET_RECOVERY_QCOM_RTC_FIX := true
TW_BRIGHTNESS_PATH := /sys/class/leds/lcd-backlight/brightness
TW_DEFAULT_BRIGHTNESS := "160"
TW_INPUT_BLACKLIST := "hbtp_vm"
TW_EXTRA_LANGUAGES := true
TW_INCLUDE_CRYPTO := true
TW_INCLUDE_NTFS_3G := true
#TWRP_EVENT_LOGGING := true
else
USE_CLANG_PLATFORM_BUILD := true
TARGET_RECOVERY_FSTAB := $(PLATFORM_PATH)/rootdir/recovery/fstab.qcom
endif

# SELinux
include device/qcom/sepolicy/sepolicy.mk
BOARD_SEPOLICY_DIRS += $(PLATFORM_PATH)/sepolicy

-include vendor/leeco/msm8996-common/BoardConfigVendor.mk
