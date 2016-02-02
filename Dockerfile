FROM hypriot/rpi-node

RUN apt-get update -y
RUN apt-get install fswebcam -y

RUN mkdir /data
VOLUME /data
ADD shoot.sh /data/

WORKDIR /data

ENTRYPOINT ["/data/shoot.sh"]
