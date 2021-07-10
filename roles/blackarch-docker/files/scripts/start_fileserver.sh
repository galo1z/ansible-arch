#/bin/bash
python -m http.server 80 >/dev/null 2>&1 &
python /root/.scripts/smbserver.py share /root/.fileserver/ >/dev/null 2>&1 &
