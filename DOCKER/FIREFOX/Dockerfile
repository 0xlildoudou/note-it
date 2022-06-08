FROM debian

RUN apt update
RUN apt install vim firefox-esr openssh-server bash xauth sudo -y

COPY sshd.sh /
RUN chmod u+x /sshd.sh
RUN ssh-keygen -A

RUN rm /etc/ssh/sshd_config
COPY sshd_config /etc/ssh/sshd_config

RUN useradd --home /home/debian --create-home --shell /bin/bash debian
RUN echo 'debian:debian' | chpasswd
RUN echo "debian ALL=(ALL) NOPASSWD:ALL" >> /etc/sudoers

EXPOSE 22

ENTRYPOINT [ "/bin/bash" ]