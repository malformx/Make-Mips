#!/bin/sh

qemu-system-mips -M malta \
  -m 2048 -hda hda.img \
  -kernel vmlinux-4.19.0-16-4kc-malta \
  -initrd initrd.img-4.19.0-16-4kc-malta \
  -append "root=/dev/sda1 console=ttyS0 nokaslr" \
  -nographic #\
  #-net nic,model=e1000 -net tap,ifname=tap0,script=no
  #-device e1000-82545em,netdev=tap 
  #-netdev user,id=tap0,hostfwd=tcp::5555-:22
  #-netdev user,id=tap,hostfwd=tcp:127.0.0.1:1322-:22
