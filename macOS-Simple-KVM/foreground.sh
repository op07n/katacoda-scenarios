git clone https://github.com/foxlet/macOS-Simple-KVM.git; \
cd macOS-Simple-KVM; \
apt-get install qemu-system qemu-utils; \
./jumpstart.sh --mojave; \
echo '-drive id=SystemDisk,if=none,file=MyDisk.qcow2' >> basic.sh; \
echo '-device ide-hd,bus=sata.4,drive=SystemDisk' >> basic.sh; \
basic.sh; 
