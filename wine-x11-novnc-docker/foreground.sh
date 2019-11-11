# dpkg --add-architecture i386
# apt-get update && apt-get -y install xvfb x11vnc xdotool wget tar supervisor wine32-development net-tools fluxbox
apt-get update && apt-get -y install xvfb x11vnc xdotool; \
wget -O - https://github.com/novnc/noVNC/archive/v1.1.0.tar.gz | tar -xzv -C /root/ && mv /root/noVNC-1.1.0 /root/novnc && ln -s /root/novnc/vnc_lite.html /root/novnc/index.html; \
wget -O - https://github.com/novnc/websockify/archive/v0.8.0.tar.gz | tar -xzv -C /root/ && mv /root/websockify-0.8.0 /root/novnc/utils/websockify; \
# https://github.com/paimpozhil/docker-novnc/blob/master/startup.sh ; \
export DISPLAY=:1 ; \
Xvfb :1 -screen 0 1600x900x16 & ; \
sleep 5 ; \
openbox-session& ; \
x11vnc -display :1 -nopw -listen localhost -xkb -ncache 10 -ncache_cr -forever & ; \
cd /root/noVNC && ln -s vnc_auto.html index.html && ./utils/launch.sh --vnc localhost:5900 ; 