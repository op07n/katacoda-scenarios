wget -O - https://github.com/novnc/noVNC/archive/v1.1.0.tar.gz | tar -xzv -C /root/ && mv /root/noVNC-1.1.0 /root/novnc && ln -s /root/novnc/vnc_lite.html /root/novnc/index.html; \
wget -O - https://github.com/novnc/websockify/archive/v0.8.0.tar.gz | tar -xzv -C /root/ && mv /root/websockify-0.8.0 /root/novnc/utils/websockify; \
git clone https://github.com/foxlet/macOS-Simple-KVM.git; \
cd macOS-Simple-KVM; \
apt-get -y install qemu-system qemu-utils; \
./jumpstart.sh --mojave; \
qemu-img create -f qcow2 MyDisk.qcow2 64G; \
echo '    -drive id=SystemDisk,if=none,file=MyDisk.qcow2 \' >> basic.sh; \
echo '    -device ide-hd,bus=sata.4,drive=SystemDisk \' >> basic.sh; \
export SYSTEM_DISK=MyDisk.qcow2; \
export HEADLESS=1; \
export CPUS=2; \
./headless.sh; \
