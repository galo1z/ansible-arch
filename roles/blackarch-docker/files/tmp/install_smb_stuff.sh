#!/bin/bash
git clone https://github.com/SecureAuthCorp/impacket.git
cd impacket
pip install -r requirements.txt
pip install impacket
cp examples/smbserver.py /root/.scripts/smbserver.py
