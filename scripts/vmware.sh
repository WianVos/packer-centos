#!/usr/bin/env bash

mkdir /tmp/vmware
mount -o loop ~/linux.iso /tmp/vmware

cd /tmp
tar xzf /tmp/vmware/VMwareTools-*.tar.gz

umount /tmp/vmware
rm -fr ~/linux.iso

/tmp/vmware-tools-distrib/vmware-install.pl -d
rm -fr /tmp/vmware-tools-distrib
