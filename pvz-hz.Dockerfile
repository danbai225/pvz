FROM danbai225/debian-novnc-wine:latest
LABEL authors="danbai"
RUN apt install p7zip p7zip-full
COPY ./pvz.sh /bin/pvz
RUN chmod +x /bin/pvz
COPY ./pvzHE.7z /root/.wine/drive_c/pvzHE.7z
RUN cd /root/.wine/drive_c && mkdir pvz && mv pvzHE.7z pvz && cd pvz && 7z x pvzHE.7z && rm pvzHE.7z