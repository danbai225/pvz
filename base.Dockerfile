FROM theasp/novnc:latest
LABEL authors="danbai"
#winehq
RUN dpkg --add-architecture i386 && mkdir -pm755 /etc/apt/keyrings && \
    wget -O /etc/apt/keyrings/winehq-archive.key https://dl.winehq.org/wine-builds/winehq.key && \
    wget -nc -P /etc/apt/sources.list.d/ https://dl.winehq.org/wine-builds/debian/dists/bullseye/winehq-bullseye.sources && \
    apt update && apt install -y --install-recommends winehq-stable
# winetricks
RUN wget https://raw.githubusercontent.com/Winetricks/winetricks/master/src/winetricks && chmod +x winetricks && mv winetricks /usr/local/bin
RUN Xvfb :99 -screen 0 1024x768x16 & wineboot -i
#7z
#RUN apt install p7zip p7zip-full
#
#COPY ./pvzHE.7z /app/pvzHE.7z
#COPY ./install.sh /app/install.sh
#RUN chmod +x /app/install.sh
