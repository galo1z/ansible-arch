FROM kalilinux/kali-rolling

COPY base.txt /tmp/base.txt
COPY kali.txt /tmp/kali.txt

RUN apt-get update && apt-get dist-upgrade -y && \
   cat /tmp/base.txt | DEBIAN_FRONTEND=noninteractive xargs apt-get -y install --no-install-recommends && \
   cat /tmp/kali.txt | DEBIAN_FRONTEND=noninteractive xargs apt-get -y install --no-install-recommends && \
   apt-get -y autoremove && \
   apt-get -y clean && \
   rm -rf /tmp/* && \
   rm -rf /var/lib/apt/lists/*

#RUN git clone --depth=1 https://github.com/danielmiessler/seclists /opt/seclists && \
#    rm -rf /opt/seclists/.git && \
#    rm -rf /opt/seclists/*.gz
    
#RUN git clone --depth=1 https://github.com/isaudits/scripts /opt/scripts && \
#    rm -rf /opt/scripts/.git

RUN bash -c "$(curl -fsSL https://raw.githubusercontent.com/ohmyzsh/ohmyzsh/master/tools/install.sh) --unattended" && \
RUN chsh -s $(which zsh)

COPY ../../tmux/files/tmux.conf /root/.tmux.conf
COPY ../../zsh/files/zshrc /root/.zshrc
COPY ../../nvim/files/hybrid_fixed.vim /root/.config/nvim/colors/hybrid_fixed.vim
COPY ../../nvim/files/init.vim /root/.config/nvim/init.vim

WORKDIR /root

#/bin/zsh
#CMD ["tail", "-f", "/dev/null"]
