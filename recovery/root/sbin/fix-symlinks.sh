#!/sbin/sh

PATH=/sbin:/system/sbin:/system/bin:/system/xbin
BYNAME=/dev/block/platform/bootdevice/by-name

if strings ${BYNAME}/misc | grep -q "wipe_data"; then
    dd if=/dev/zero of=${BYNAME}/misc
fi

PROTECTED="lk lk2 tee1 tee2"

for byname in /dev/block/by-name /dev/block/platform/*/by-name; do
    [ -d "${byname}" ] || continue

    for part in ${PROTECTED}; do
        [ -e ${byname}/${part} ] || continue
        [ -e ${byname}/${part}_real ] && continue

        real=$(readlink -f ${byname}/${part})
        [ -n "${real}" ] || continue

        rm -f ${byname}/${part}
        ln -s "${real}" ${byname}/${part}_real
        ln -s /dev/null ${byname}/${part}
    done
done

disk=$(readlink -f ${BYNAME}/userdata)
disk=${disk##*/}
disk=${disk%p*}
boot0=${disk}boot0

if [ -n "${disk}" ] && [ -e /dev/block/${boot0} ]; then
    setprop twrp.preloader.dev ${boot0}

    if [ ! -e /dev/block/${boot0}_real ]; then
        mv /dev/block/${boot0} /dev/block/${boot0}_real
        ln -s /dev/null /dev/block/${boot0}
    fi
fi
