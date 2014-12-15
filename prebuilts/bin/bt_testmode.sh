#!/system/bin/sh
# Copyright (c) 2009, ZTE . All rights reserved.
#History:
#when       who         what, where, why
#--------   ----        ---------------------------------------------------
#2009-12-24 zhangxian   new file for bt test mode 
##########################################

  dm_transport=`getprop ro.qualcomm.bt.hci_transport`
  echo "dm_transport= $dm_transport"
case "$dm_transport" in
    "smd")
         echo "ro.qualcomm.bt.hci_transport = smd"         
        ;;
    *)
        echo "ro.qualcomm.bt.hci_transport not set"
        setprop ro.qualcomm.bt.hci_transport smd       
        ;;
esac


setprop ctl.stop bluetoothd
hciconfig hci0 down
echo 0 > /sys/module/hci_smd/parameters/hcismd_set



setprop ctl.start hciattach
sleep 2      

hciconfig hci0 up      
hcitool cmd 0x06 0x0003
hcitool cmd 0x03 0x0005 0x02 0x00 0x02
hcitool cmd 0x03 0x001A 0x03
hcitool cmd 0x03 0x0020 0x00
hcitool cmd 0x03 0x0022 0x00
