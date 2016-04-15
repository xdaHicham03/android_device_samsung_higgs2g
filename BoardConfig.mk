USE_CAMERA_STUB := true

# inherit from the proprietary version
-include vendor/samsung/higgs2g/BoardConfigVendor.mk

# Platform
TARGET_ARCH := arm
TARGET_NO_BOOTLOADER := true
TARGET_BOARD_PLATFORM := SC6815AS
TARGET_CPU_ABI := armeabi-v7a
TARGET_CPU_ABI2 := armeabi
TARGET_ARCH_VARIANT := armv7-a-neon
TARGET_CPU_VARIANT := cortex-a7
TARGET_CPU_SMP := true
ARCH_ARM_HAVE_TLS_REGISTER := true
TARGET_BOOTLOADER_BOARD_NAME := scx15
BOARD_VENDOR := samsung

# Assert
TARGET_OTA_ASSERT_DEVICE := higgs2g,G350E,SM-G350E,scx15

# Kernel (console=ttyS0,115200n8 mem=456M gpt v3d_mem=67108864 pmem=24M@0x9E800000)
TARGET_PREBUILT_KERNEL := device/samsung/higgs2g/kernel
BOARD_KERNEL_CMDLINE :=
BOARD_KERNEL_BASE := 0x81e00000
BOARD_KERNEL_PAGESIZE := 4096
TARGET_KERNEL_CONFIG := higgs2g-native_defconfig
# TARGET_KERNEL_SOURCE := ../kernel/samsung/higgs2g
# KERNEL_TOOLCHAIN_PREFIX:=/home/nikiz/cm11/prebuilt/linux-x86/toolchains/arm-eabi-4.7/bin/arm-eabi-
TARGET_KERNEL_CUSTOM_TOOLCHAIN := arm-eabi-4.7

# PARTITION SIZE
BOARD_BOOTIMAGE_PARTITION_SIZE := 8388608
BOARD_RECOVERYIMAGE_PARTITION_SIZE := 8388608
BOARD_SYSTEMIMAGE_PARTITION_SIZE := 1073741824
BOARD_USERDATAIMAGE_PARTITION_SIZE := 2383706850
BOARD_CACHEIMAGE_PARTITION_SIZE := 209715200
BOARD_CACHEIMAGE_FILE_SYSTEM_TYPE := ext4
# higgs2g needs this in the boot image
# BOARD_MKBOOTIMG_ARGS := --second $(OUT)/obj/KERNEL_OBJ/arch/arm/boot/dts/scx15.dtb
# Use this if you use a prebuilt kernel
BOARD_MKBOOTIMG_ARGS := --second device/samsung/higgs2g/second.bin

# FLASH BLOCK SIZE (BOARD_KERNEL_PAGESIZE * 64)
BOARD_FLASH_BLOCK_SIZE := 262144

# Bluetooth
BOARD_HAVE_BLUETOOTH := true
BOARD_HAVE_BLUETOOTH_BCM := true
BOARD_BLUETOOTH_BDROID_BUILDCFG_INCLUDE_DIR := device/samsung/higgs2g/bluetooth
BOARD_BLUEDROID_VENDOR_CONF := device/samsung/higgs2g/bluetooth/libbt_vndcfg_g313hu.txt

# Wifi
BOARD_WLAN_DEVICE                := bcmdhd
BOARD_WLAN_DEVICE_REV            := bcm4343
WPA_SUPPLICANT_VERSION           := VER_0_8_X
BOARD_WPA_SUPPLICANT_DRIVER      := NL80211
BOARD_WPA_SUPPLICANT_PRIVATE_LIB := lib_driver_cmd_bcmdhd
BOARD_HOSTAPD_DRIVER             := NL80211
BOARD_HOSTAPD_PRIVATE_LIB        := lib_driver_cmd_bcmdhd
WIFI_DRIVER_FW_PATH_PARAM        := "/sys/module/dhd/parameters/firmware_path"
WIFI_DRIVER_FW_PATH_STA          := "/system/etc/wifi/bcmdhd_sta.bin"
WIFI_DRIVER_FW_PATH_AP           := "/system/etc/wifi/bcmdhd_apsta.bin"
WIFI_DRIVER_NVRAM_PATH_PARAM     := "/sys/module/dhd/parameters/nvram_path"
WIFI_DRIVER_NVRAM_PATH           := "/system/etc/wifi/nvram_net.txt"
WIFI_BAND                        := 802_11_ABG
BOARD_HAVE_SAMSUNG_WIFI          := true

# Resolution
TARGET_SCREEN_HEIGHT := 800
TARGET_SCREEN_WIDTH := 480

# Hardware rendering
BOARD_EGL_CFG := device/samsung/higgs2g/configs/egl.cfg
USE_OPENGL_RENDERER := true
BOARD_USE_MHEAP_SCREENSHOT := true
BOARD_EGL_WORKAROUND_BUG_10194508 := true
TARGET_USES_ION := true
HWUI_COMPILE_FOR_PERF := true
#TARGET_RUNNING_WITHOUT_SYNC_FRAMEWORK := true
COMMON_GLOBAL_CFLAGS += -DNEEDS_VECTORIMPL_SYMBOLS -DCAPRI_HWC
TARGET_GLOBAL_CFLAGS += -DANDROID_MULTI_SIM
TARGET_GLOBAL_CPPFLAGS += -DANDROID_MULTI_SIM

# Opengl
BOARD_USE_BGRA_8888 := true

# Audio
BOARD_USES_ALSA_AUDIO := true

# Optimisations
#TARGET_USE_SCORPIAN_BIONIC_OPTIMIZATION := true
#TARGET_CORTEX_CACHE_LINE_32 := true
#ARCH_ARM_HIGH_OPTIMIZATION := true
#ARCH_ARM_HIGH_OPTIMIZATION_COMPAT := true
#ARCH_ARM_HAVE_32_BYTE_CACHE_LINES := true

# Enable dex-preoptimization to speed up the first boot sequence
# of an SDK AVD. Note that this operation only works on Linux for now
WITH_DEXPREOPT := false
ifeq ($(HOST_OS),linux)
  ifeq ($(WITH_DEXPREOPT),)
    #WITH_DEXPREOPT := true
  endif
endif

# Add h/w acceleration in browser
#ENABLE_WEBGL := true
#WITH_JIT := true
#ENABLE_JSC_JIT := true
#JS_ENGINE := v8
#HTTP := chrome
#TARGET_FORCE_CPU_UPLOAD := true

# Bootanimation
TARGET_BOOTANIMATION_PRELOAD := true
TARGET_BOOTANIMATION_TEXTURE_CACHE := true

# Charger
#BOARD_CHARGER_ENABLE_SUSPEND := true
#BOARD_ALLOW_SUSPEND_IN_CHARGER := true
BOARD_CHARGING_MODE_BOOTING_LPM := /sys/class/power_supply/battery/batt_lp_charging
#BOARD_BATTERY_DEVICE_NAME := "battery"

SENSORS_NEED_SETRATE_ON_ENABLE := true
BOARD_USE_LEGACY_SENSORS_FUSION := false
BOARD_SDEXT_DEVICE := /dev/block/mmcblk1p1

# healthd
BOARD_HAL_STATIC_LIBRARIES := libhealthd-higgs2g.scx15

# RIL
BOARD_RIL_CLASS := ../../../device/samsung/higgs2g/ril/
SIM_COUNT := 2

# Recovery
TARGET_RECOVERY_INITRC := device/samsung/higgs2g/ramdisk/init.recovery.rc
TARGET_RECOVERY_FSTAB := device/samsung/higgs2g/ramdisk/fstab.scx15
TARGET_USE_CUSTOM_LUN_FILE_PATH := "/sys/class/android_usb/android0/f_mass_storage/lun%d/file"
BOARD_HAS_NO_SELECT_BUTTON := true
BOARD_HAS_LARGE_FILESYSTEM := true
TARGET_USERIMAGES_USE_EXT4 := true
TARGET_RECOVERY_PIXEL_FORMAT := BGRA_8888
BOARD_HAS_NO_MISC_PARTITION := true
BOARD_RECOVERY_HANDLES_MOUNT := true
BOARD_USES_MMCUTILS := false
BOARD_RECOVERY_ALWAYS_WIPES := false
BOARD_SUPPRESS_EMMC_WIPE := true

# TWRP Settings
RECOVERY_GRAPHICS_USE_LINELENGTH 		:= true
DEVICE_RESOLUTION	:= 480x800
BOARD_USE_CUSTOM_RECOVERY_FONT	:= \"roboto_10x18.h\"
TW_INTERNAL_STORAGE_PATH 			:= "/data/media/0"
TW_INTERNAL_STORAGE_MOUNT_POINT 		:= "data"
TW_EXTERNAL_STORAGE_PATH 			:= "/external_sd"
TW_EXTERNAL_STORAGE_MOUNT_POINT 		:= "external_sd"
TW_DEFAULT_EXTERNAL_STORAGE 			:= true
TW_FLASH_FROM_STORAGE 				:= true
TW_NO_REBOOT_BOOTLOADER 			:= true
TW_HAS_DOWNLOAD_MODE				:= true

BOARD_HAVE_FM_RADIO := true
BOARD_FM_DEVICE := bcm4329

# CMHW
BOARD_HARDWARE_CLASS := hardware/samsung/cmhw/ device/samsung/higgs2g/cmhw/

# GPS
TARGET_SPECIFIC_HEADER_PATH := device/samsung/higgs2g/include

# SELinux
BOARD_SEPOLICY_DIRS += \
    device/samsung/higgs2g/sepolicy

BOARD_SEPOLICY_UNION += \
    file_contexts
