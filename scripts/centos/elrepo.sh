#! /usr/bin/env bash

yum remove -y kernel-headers kernel-devel

rpm --import https://www.elrepo.org/RPM-GPG-KEY-elrepo.org
yum install -y rpm -v http://www.elrepo.org/elrepo-release-7.0-4.el7.elrepo.noarch.rpm

yum --enablerepo=elrepo-kernel install -y kernel-ml kernel-ml-devel kernel-ml-headers grub2-tools

yum install -y dkms gcc redhat-lsb-languages

grub2-mkconfig -o /boot/grub2/grub.cfg
grep vmlinuz /boot/grub2/grub.cfg
grub2-set-default 0

reboot

