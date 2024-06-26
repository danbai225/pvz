FROM theasp/novnc:latest
LABEL authors="danbai"
#winehq
RUN dpkg --add-architecture i386 && mkdir -pm755 /etc/apt/keyrings && \
    wget -O /etc/apt/keyrings/winehq-archive.key https://dl.winehq.org/wine-builds/winehq.key && \
    wget -nc -P /etc/apt/sources.list.d/ https://dl.winehq.org/wine-builds/debian/dists/bullseye/winehq-bullseye.sources && \
    apt update && apt install -y --install-recommends winehq-stable
# winetricks
RUN wget https://raw.githubusercontent.com/Winetricks/winetricks/master/src/winetricks && chmod +x winetricks && mv winetricks /usr/local/bin
