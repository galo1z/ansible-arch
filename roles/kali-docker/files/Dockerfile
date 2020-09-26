FROM kalilinux/kali-rolling

#ENV DEBIAN_FRONTEND noninteractive
#ENV TERM xterm-256color

# Install Kali
#RUN rm -fR /var/lib/apt/ && \
RUN apt-get clean && \
    apt-get update -y
#    apt-get install -y kali-linux-
# kali-linux-full
# secLists!
#RUN git clone https://github.com/danielmiessler/SecLists /usr/share/seclists

# Update DB and clean'up!
#RUN updatedb && \
#RUN updatedb && \
#    apt-get autoremove -y && \
#    apt-get clean

#ENTRYPOINT ["/bin/zsh"]
ENTRYPOINT ["/bin/bash"]
