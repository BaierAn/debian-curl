FROM debian:latest
RUN apt update
RUN apt-get install -y curl 

ADD ./entrypoint.sh /
RUN chmod +x /entrypoint.sh
ENTRYPOINT ["/entrypoint.sh"]
