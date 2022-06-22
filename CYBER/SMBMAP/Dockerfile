FROM debian

RUN apt update && apt dist-upgrade -y
RUN apt install -y git bash python3 python3-pip

RUN git clone https://github.com/ShawnDEvans/smbmap.git
RUN python3 -m pip install -r /smbmap/requirements.txt

ENTRYPOINT [ "/smbmap/smbmap.py" ]