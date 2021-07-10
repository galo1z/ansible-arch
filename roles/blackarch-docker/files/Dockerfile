FROM archlinux/archlinux:base-devel

ENV TERM xterm-256color

# Misc
ADD /root/.scripts
COPY scripts/* /root/.scripts/
RUN chmod +x /root/.scripts/*

###########################################################################

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

# TODO: pip
COPY software/pip.txt pip.txt
RUN pip install --upgrade pip
RUN pip install -r pip.txt

###########################################################################

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

# Fileserver stuff
ADD /root/.fileserver/
WORKDIR /root/.fileserver/
COPY tmp/software_and_scripts_list.txt /tmp/
RUN wget -i /tmp/software_and_scripts_list.txt
RUN wget https://github.com/SecureAuthCorp/impacket/blob/master/examples/smbserver.py -O /root/.scripts/
RUN chmod +i /root/.fileserver/*
# TODO: ADD ENV scripts ?B



#TODO:
# 1. Fix pip
# 2. Create webserver dir: put there linpeas, pspy and other stuff; create alias for it's start + Create strt smb/ftp/nfs services, start them as well with same direcory
# 3. Create smart get_shell script (using 1 file, not 2) and put it in PATH
# 4. Genereate download one-liners (using wget, curl, mount nfs/smb, ftp, windows tools and stuff) + alias get_download ?
