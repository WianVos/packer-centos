#!/usr/bin/env bash

# Install required package to build VBoxLinuxAdditions
yum -y install dkms gcc kernel-headers-`uname -r` kernel-devel-`uname -r`

# Install VirtualBox Guest Additions
mkdir /tmp/virtualbox
VERSION=$(cat ~/.vbox_version)
mount -o loop ~/VBoxGuestAdditions_$VERSION.iso /tmp/virtualbox
# The VBoxLinuxAdditions.run script will return this error: Could not find the X.Org or XFree86 Window System, skipping.
# So, don't let this script exits with this as the last command.
sh /tmp/virtualbox/VBoxLinuxAdditions.run

umount /tmp/virtualbox
rmdir /tmp/virtualbox
rm ~/*.iso
