#!/system/bin/sh
if ! applypatch -c EMMC:/dev/block/platform/bootdevice/by-name/recovery:14599072:91fb43ae84f76976f0fd215daa2952313ac08bca; then
  applypatch -b /system/etc/recovery-resource.dat EMMC:/dev/block/platform/bootdevice/by-name/boot:10189728:fdf9a9236a52f0d6ee1dfa7da456a39c44cb5135 EMMC:/dev/block/platform/bootdevice/by-name/recovery 91fb43ae84f76976f0fd215daa2952313ac08bca 14599072 fdf9a9236a52f0d6ee1dfa7da456a39c44cb5135:/system/recovery-from-boot.p && log -t recovery "Installing new recovery image: succeeded" || log -t recovery "Installing new recovery image: failed"
else
  log -t recovery "Recovery image already installed"
fi
