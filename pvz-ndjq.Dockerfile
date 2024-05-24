FROM danbai225/debian-novnc-wine:latest
LABEL authors="danbai"
RUN apt install p7zip p7zip-full
COPY ./pvz.sh /bin/pvz
RUN chmod +x /bin/pvz
COPY ./pvz-ndjq.7z /root/.wine/drive_c/pvz-ndjq.7z
RUN cd /root/.wine/drive_c && mkdir pvz && mv pvz-ndjq.7z pvz && cd pvz && 7z x pvz-ndjq.7z && rm pvz-ndjq.7z