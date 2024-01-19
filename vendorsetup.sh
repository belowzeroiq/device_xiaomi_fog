# ROM source patches

color="\033[0;32m"
end="\033[0m"

echo -e "${color}Applying patches${end}"
sleep 1

# Remove pixel headers to avoid conflicts
rm -rf hardware/google/pixel/kernel_headers/Android.bp

# Remove included hardware_xiaomi
rm -rf hardware/xiaomi

# clone lineage os hardware_xiaomi
git clone https://github.com/LineageOS/android_hardware_xiaomi -b lineage-20 hardware/xiaomi

# Kernel Sources
git clone https://github.com/KDEFFALT/fog-kernel -b artifact-r2 kernel/xiaomi/fog

# Vendor Sources
git clone https://github.com/KDEFFALT/vendor_xiaomi_fog -b thirteen vendor/xiaomi/fog

# Viper4AndroidFX
git clone https://github.com/swiitch-OFF-Lab/packages_apps_ViPER4AndroidFX -n V4A packages/apps/ViPER4AndroidFX

echo -e "${color}Finished sync!${end}"
