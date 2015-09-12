#!/sbin/sh

if getprop ro.product.model == "IM-A910S" ; then
	mv /system/etc/firmware-ef63s/* /system/etc/firmware/
elif getprop ro.product.model == "IM-A910K" ; then
	mv /system/etc/firmware-ef63k/* /system/etc/firmware/
fi

rm -rf /system/etc/firmware-ef63s
rm -rf /system/etc/firmware-ef63k
