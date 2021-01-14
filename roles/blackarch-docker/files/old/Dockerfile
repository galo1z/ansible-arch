FROM kalilinux/kali-bleeding-edge

#ENV DEBIAN_FRONTEND noninteractive
#ENV TERM xterm-256color

# Install software from repos
COPY packages.txt /tmp/
RUN apt-get update && \
   cat /tmp/packages.txt | DEBIAN_FRONTEND=noninteractive xargs apt-get -y install && \
   apt-get -y autoremove && \
   apt-get -y clean && \
   rm -rf /tmp/packages.txt && \
   rm -rf /var/lib/apt/lists/*

# Download SecLists
RUN git clone https://github.com/danielmiessler/SecLists /usr/share/seclists

# Golang
RUN apt-get install -y golang && \
    /bin/bash -c "echo -e 'export GOPATH=$HOME/go' >> ~/.rc_kali" && \
    /bin/bash -c "echo -e 'export PATH=${PATH}:$HOME/go/bin' >> ~/.rc_kali"

# Update DB and clean'up
RUN updatedb && \
    apt-get autoremove -y && \
    apt-get clean 

# MOUNT HOST HOME AS docker home READ-ONLY!
# MOUNT NETWORK IN HOST
ENTRYPOINT ["/bin/zsh"]
