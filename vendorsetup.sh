export SKIP_ABI_CHECKS=true
export SKIP_API_CHECKS=true
#export SELINUX_IGNORE_NEVERALLOWS=true
#export ALLOW_MISSING_DEPENDENCIES=true
# Clang
git clone https://gitlab.com/ElectroPerf/atom-x-clang.git --depth=1 prebuilts/clang/host/linux-x86/clang-atom
# GCC
git clone --depth=1 https://github.com/mvaisakh/gcc-arm64.git prebuilts/gcc/linux-x86/aarch64/aarch64-elf
git clone --depth=1 https://github.com/mvaisakh/gcc-arm.git prebuilts/gcc/linux-x86/arm/arm-eabi
# External_Packages
git clone https://github.com/dhimanparas20/vendor_packages.git vendor/packages
# XiaomiParts
git clone https://github.com/dhimanparas20/XiaomiParts.git vendor/XiaomiParts
# Cache
export USE_CCACHE=1 && ccache -M 50G && export CONFIG_STATE_NOTIFIER=y
