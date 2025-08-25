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
