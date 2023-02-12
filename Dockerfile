FROM kalilinux/kali-rolling:latest

ENV DEBIAN_FRONTEND noninteractive

# Install components

RUN apt update; apt -y dist-upgrade
RUN apt-get -y install \
curl \
dirb \
dirbuster \
enum4linux \
exploitdb \
ftp \
gobuster \
hydra \
man \
metasploit-framework \
nfs-common \
nikto \
nmap \
openvpn \
oscanner \
postgresql \
python3-pip \
smbclient \
smbmap \
smtp-user-enum \
socat \
sslscan \
sqlmap \
tmux \
vim \
webshells \
wfuzz \
whatweb \
wordlists \
zaproxy \
iputils-ping

RUN apt-get -y autoremove
ENTRYPOINT bash $@

