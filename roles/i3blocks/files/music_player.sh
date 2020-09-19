#!/bin/sh

if [[ $(mpc status | grep playing) ]]; then
    mpc pause 1>/dev/null; echo ''
else
    mpc play 1>/dev/null; echo ''
fi
exit 0
