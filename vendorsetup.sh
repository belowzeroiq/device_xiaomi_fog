# ROM source patches

color="\033[0;32m"
end="\033[0m"

echo -e "${color}Applying patches${end}"
sleep 1

# Remove pixel headers to avoid conflicts
rm -rf hardware/google/pixel/kernel_headers/Android.bp

# Remove included hardware_xiaomi and clone from lineage os
rm -rf hardware/xiaomi
git clone https://github.com/LineageOS/android_hardware_xiaomi -b lineage-21 hardware/xiaomi

# Bengal HALs
git clone https://github.com/belowzeroiq/hardware_qcom-caf_bengal -b fourteen hardware/qcom-caf/bengal

# Kernel Sources
git clone https://github.com/belowzeroiq/artifact-kernel -b yoru-stock kernel/xiaomi/fog

# Vendor Sources
git clone https://github.com/belowzeroiq/vendor_xiaomi_fog -b fourteen vendor/xiaomi/fog

# Viper4AndroidFX
git clone https://github.com/swiitch-OFF-Lab/packages_apps_ViPER4AndroidFX -b V4A packages/apps/ViPER4AndroidFX
echo -e "${color}Finished sync!${end}"
