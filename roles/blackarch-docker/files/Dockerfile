FROM archlinux/archlinux:base-devel

ENV TERM xterm-256color

WORKDIR /tmp

# Install black arch
COPY strap.sh strap.sh
RUN sh strap.sh && \
    pacman -Syyu --noconfirm reflector && \
    reflector --latest 10 -p https --sort rate --save /etc/pacman.d/mirrorlist

# Install software
COPY software/base.txt base.txt
COPY software/toolkit.txt toolkit.txt
RUN cat base.txt toolkit.txt  | xargs pacman -S --noconfirm --needed

#TODO: pip
#COPY software/pip.txt pip.txt
#RUN pip install --upgrade pip
#RUN cat pip.txt | xargs pip install 

WORKDIR /root

# Configure zsh 
RUN git clone --depth=1 https://github.com/robbyrussell/oh-my-zsh.git .oh-my-zsh
RUN chsh -s $(which zsh)

# Copy configs
COPY configs/zshrc .zshrc
COPY configs/tmux.conf .tmux.conf
COPY configs/zshrc_extra .zshrc_extra
COPY configs/msf_res.rb .msf_res.rb
COPY configs/hybrid.vim .config/nvim/colors/hybrid.vim
COPY configs/init.vim .config/nvim/init.vim

# Misc
#COPY scripts /root/scripts
#RUN chmod +x /root/scripts/*

# Get seclists
RUN git clone --depth=1 https://github.com/danielmiessler/seclists /opt/seclists && \
    rm -rf /opt/seclists/.git && \
    rm -rf /opt/seclists/*.gz

## Get scripts
#RUN git clone --depth=1 https://github.com/isaudits/scripts /opt/scripts && \
#    rm -rf /opt/scripts/.git
#
## Get payloads
#RUN git clone --depth=1 https://github.com/swisskyrepo/PayloadsAllTheThings /opt/payloads && \
#    rm -rf /opt/payloads/.git
