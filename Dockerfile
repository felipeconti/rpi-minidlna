FROM hypriot/rpi-alpine

RUN apk add --no-cache minidlna  

RUN sed -i 's/media_dir=\/opt/media_dir=\/data/' /etc/minidlna.conf
RUN sed -i 's/#root_container=./root_container=V/' /etc/minidlna.conf
RUN sed -i 's/#friendly_name=My\ DLNA\ Server/friendly_name=Movies/' /etc/minidlna.conf
RUN sed -i 's/#inotify=yes/inotify=yes/' /etc/minidlna.conf

EXPOSE 1900/udp
EXPOSE 8200/tcp

VOLUME /data

COPY entry.sh /entry.sh

CMD ["/entry.sh"]
