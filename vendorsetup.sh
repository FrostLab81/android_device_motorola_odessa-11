deviceDir=$(gettop)/device/motorola/odessa

chmod +x device/motorola/odessa/applyPatches.sh

# apply patches
${deviceDir}/applyPatches.sh ${deviceDir}/patches

# clone motocam
git clone https://gitlab.com/NemesisDevelopers/moto-camera/motorola_camera2_whitney.git --depth=1 -b eleven-arm64 packages/apps/MotCamera2

# clone overlay
git clone https://gitlab.com/NemesisDevelopers/moto-camera/motorola_camera2_overlay.git -b ten packages/apps/MotCamera2-overlay

# clone signature
git clone https://gitlab.com/NemesisDevelopers/motorola/motorola_motosignatureapp.git -b eleven packages/apps/MotoSignatureApp

# zlib from protonAOSP
rm -rf external/zlib
rm -rf external/zlib-ng
git clone https://github.com/ProtonAOSP/android_external_zlib-ng.git -b rvc external/zlib-ng

# jemalloc from protonAOSP
rm -rf external/jemalloc_new
git clone https://github.com/ProtonAOSP/android_external_jemalloc_new.git -b rvc external/jemalloc_new