#!/bin/sh

BOOT=/boot
HOME=~/
/usr/bin/sudo cp -v $BOOT/initrd.img-`uname -r` $HOME
/usr/bin/sudo cp -v $BOOT/vmlinuz-`uname -r` $HOME
/usr/bin/sudo chmod 777 $HOME/vmlinuz-`uname -r`
scp $HOME/initrd.img-`uname -r` pxe@192.168.121.55:/tftpboot/pxelinux/img/dbdesk/initrd.img
scp $HOME/vmlinuz-`uname -r` pxe@192.168.121.55:/tftpboot/pxelinux/img/dbdesk/vmlinuz
rm -vf $HOME/initrd.img-`uname -r`
rm -vf $HOME/vmlinuz-`uname -r`
