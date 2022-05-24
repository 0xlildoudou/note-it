FROM debian:latest

RUN apt update && apt dist-upgrade -y
RUN apt install nmap -y

ENTRYPOINT [ "nmap" ]