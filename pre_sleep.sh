# called from modified suspend hal

# prepare env
DMIPATH=/sys/class/dmi/id
export BOARD=$(cat $DMIPATH/board_name)
export PRODUCT=$(cat $DMIPATH/product_name)
export VENDOR=$(cat $DMIPATH/sys_vendor)
export UEVENT=$(cat $DMIPATH/uevent)

# put prebaked actions here

# allow user defined actions
USER_SCRIPT=/data/etc/pre_sleep.sh
if [ -e $USER_SCRIPT ]
then
	/system/bin/sh $USER_SCRIPT
fi
