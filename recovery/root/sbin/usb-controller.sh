#!/sbin/sh

PATH=/sbin:/system/sbin:/system/bin:/system/xbin

for udc in /sys/class/udc/*; do
    [ -e "${udc}" ] || continue
    setprop sys.usb.controller "${udc##*/}"
    break
done
