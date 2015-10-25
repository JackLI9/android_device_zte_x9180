Device configuration for the ZTE V5 RedBull (X9180)
===============================

Local manifest for CM12.1, BlissPop, PAC, Resurrection-Remix-LP-v5.5.8，temasek:

```xml
<?xml version="1.0" encoding="UTF-8"?>
<manifest>
  

  <project name="CyanogenMod/android_device_qcom_common" path="device/qcom/common" remote="github" revision="cm-12.1" />
  <project name="CyanogenMod/android_hardware_qcom_fm" path="hardware/qcom/fm" remote="github" revision="cm-12.1" />

  <project name="flwh/android_kernel_zte_x9180.git" path="kernel/ZTE/X9180" remote="github" revision="cm-12.1" />
  <project name="flwh/android_device_zte_x9180.git" path="device/ZTE/X9180" remote="github" revision="cm-12.1" />
  <project name="flwh/android_device_zte_x9180_proprietary.git" path="vendor/ZTE/X9180" remote="github"revision="cm-12.1" />

</manifest>
```


```

Make rule for PAC ROM (vendor/pac/products/pac_X9180.mk):

```sh
# Check for target product
ifeq (pac_X9180,$(TARGET_PRODUCT))

# Bootanimation
PAC_BOOTANIMATION_NAME := 720

# include PAC common configuration
include vendor/pac/config/pac_common.mk

# Inherit CM device configuration
$(call inherit-product, device/ZTE/X9180/cm.mk)

PRODUCT_NAME := pac_X9180

endif
```
