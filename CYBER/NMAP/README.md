# NMAP in Docker

nmap in Docker

# How to use
Create the Docker image
```shell
sudo docker build . -t nmap
```
Run the Docker with your command

Example with 1.1.1.1
```shell
sudo docker run --rm nmap 1.1.1.1
```
Output
```shell
Starting Nmap 7.80 ( https://nmap.org ) at 2022-05-24 14:17 UTC
Nmap scan report for one.one.one.one (1.1.1.1)
Host is up (0.011s latency).
Not shown: 998 filtered ports
PORT    STATE SERVICE
80/tcp  open  http
443/tcp open  https

Nmap done: 1 IP address (1 host up) scanned in 4.80 seconds
```

## Version
Version 1.0