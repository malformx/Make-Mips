qemu-img create -f qcow2 hda.img 20G #create qcow2 hdd

qemu-system-mips -M malta \
  -m 256 -hda hda.img \
  -kernel vmlinux-4.19.0-16-4kc-malta \
  -initrd initrd.gz \
  -append "console=ttyS0 nokaslr" \
  -nographic

