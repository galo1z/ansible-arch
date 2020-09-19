#!/bin/bash
bluetoothctl << EOF
select 00:1A:7D:DA:71:13
power on
trust E4:22:A5:BD:7D:B4
pair E4:22:A5:BD:7D:B4
connect E4:22:A5:BD:7D:B4
quit
EOF
