# dpkg --add-architecture i386
# apt-get update && apt-get -y install xvfb x11vnc xdotool wget tar supervisor wine32-development net-tools fluxbox
apt-get update && apt-get -y install xvfb x11vnc; \
wget -O - https://github.com/novnc/noVNC/archive/v1.1.0.tar.gz | tar -xzv -C /root/ && mv /root/noVNC-1.1.0 /root/novnc && ln -s /root/novnc/vnc_lite.html /root/novnc/index.html; \
wget -O - https://github.com/novnc/websockify/archive/v0.8.0.tar.gz | tar -xzv -C /root/ && mv /root/websockify-0.8.0 /root/novnc/utils/websockify; \
DISPLAY=:1 ; \
(Xvfb :1 -screen 0 1024x768x24 &) ; \ 
(sleep 5) ; \
(x11vnc -display :1 -nopw -listen localhost -xkb -ncache 10 -ncache_cr -forever &) ; \
(cd novnc && ./utils/launch.sh --vnc localhost:5900 --listen 8080 );
