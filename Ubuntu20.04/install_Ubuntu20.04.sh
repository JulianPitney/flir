#!/bin/bash


# INSTALL SPINNAKER SDK
sudo apt-get install libavcodec58 libavformat58 \
libswscale5 libswresample3 libavutil56 libusb-1.0-0 \
libpcre2-16-0 libdouble-conversion3 libxcb-xinput0 \
libxcb-xinerama0


sudo bash "./spinnaker-2.7.0.128-Ubuntu20.04-amd64-pkg/spinnaker-2.7.0.128-amd64/install_spinnaker.sh"


sudo bash "./spinnaker-2.7.0.128-Ubuntu20.04-amd64-pkg/spinnaker-2.7.0.128-amd64/configure_usbfs.sh"
echo "USB Memory Buffer `cat /sys/module/usbcore/parameters/usbfs_memory_mb`"
sudo sh -c 'echo 4000 > /sys/module/usbcore/parameters/usbfs_memory_mb'
echo "USB Memory Buffer: `cat /sys/module/usbcore/parameters/usbfs_memory_mb`"



# INSTALL SPINNAKER PYTHON WRAPPER
#sudo apt-get install python-pip python3-pip

