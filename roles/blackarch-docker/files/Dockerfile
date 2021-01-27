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
RUN cat base.txt  | xargs pacman -S --noconfirm --needed


#TODO: pip
#COPY software/pip.txt pip.txt
#RUN pip install --upgrade pip
#RUN cat pip.txt | xargs pip install 

# Configure zsh 
RUN git clone --depth=1 https://github.com/robbyrussell/oh-my-zsh.git /root/.oh-my-zsh
RUN chsh -s $(which zsh)

# Copy configs
COPY configs/tmux.conf /root/.tmux.conf
COPY configs/zshrc /root/.zshrc
COPY configs/zshrc_extra /root/.zshrc_extra
COPY configs/hybrid.vim /root/.config/nvim/colors/hybrid.vim
COPY configs/init.vim /root/.config/nvim/init.vim
COPY configs/msf_res.rb /root/.msf_rec.rb

# Misc
COPY scripts /root/scripts

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


#ENTRYPOINT ["/bin/zsh"]
