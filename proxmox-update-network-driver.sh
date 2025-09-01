#!/bin/bash

echo "Let's cd in to temp folder"
cd /tmp

echo "Let's Dowload latest network drivers"
wget https://downloadmirror.intel.com/861564/ixgbe-6.1.6.tar.gz

echo "Let's extract files"
tar -xvpf ixgbe-6.1.6.tar.gz

echo "Let's cd in to the src folder"
cd ixgbe-6.1.6/src

echo "Let's install to the PV header and build-essntials"
apt install pve-headers build-essential

echo "Let's install network drivers"
make install

echo "Let's bind drivers to our NICs"
modinfo ixgbe

# Here you need to find your device names of NIC ports, so we can bind drivers to these NICs YOu can find this in Proxmox UI PVE > System > Network
modprobe ixgbe [parameter=YOURNICPORT0,YOURNICPORT1]

echo "Finished lets reboot!"
rmmod ixgbe; modprobe ixgbe && reboot
