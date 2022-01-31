export SKIP_ABI_CHECKS=true
export SKIP_API_CHECKS=true
#export SELINUX_IGNORE_NEVERALLOWS=true
#export ALLOW_MISSING_DEPENDENCIES=true

# Compilers
git clone https://gitlab.com/ElectroPerf/atom-x-clang.git --depth=1 prebuilts/clang/host/linux-x86/clang-atom
git clone --depth=1 https://github.com/mvaisakh/gcc-arm64.git prebuilts/gcc/linux-x86/aarch64/aarch64-elf
git clone --depth=1 https://github.com/mvaisakh/gcc-arm.git prebuilts/gcc/linux-x86/arm/arm-eabi

# sm6150-extras
git clone https://github.com/PixelExperience-Devices/device_xiaomi_sm6150-extras.git device/xiaomi/sm6150-extras
# Xiaomi's Hardware
git clone https://github.com/LineageOS/android_hardware_xiaomi.git -b lineage-19.0 hardware/xiaomi
# Cache
export USE_CCACHE=1 && ccache -M 50G && export CONFIG_STATE_NOTIFIER=y
