#!/usr/bin/python
import sys
import requests

url = 'https://malwareworld.com/textlists/suspiciousIPs.txt'
iplist_path = '/tmp/suspiciousIPs.txt'
myfile = requests.get(url)
open(iplist_path, 'wb').write(myfile.content)

default_config = """
*filter
# --- Disallow INPUT by default, allow OUTPUT and FORWARD
:INPUT DROP [0:0]
:OUTPUT ACCEPT [0:0]
:FORWARD ACCEPT [0:0]

# Accept incoming packets for established connections
-A INPUT -m conntrack --ctstate RELATED,ESTABLISHED -j ACCEPT

# --- Allow unrestricted traffic on a loopback adapter
-A INPUT  -i lo -j ACCEPT
-A OUTPUT -o lo -j ACCEPT

# --- Allow the outside world to connect to SSH
#-A INPUT -p tcp -m tcp --dport 22 -j ACCEPT

# --- Allow the outside world to send all ICMP requests
-A INPUT -p icmp -m icmp --icmp-type 255 -j ACCEPT

# Drop invalid packets
-A INPUT -m conntrack --ctstate INVALID -j DROP

"""

data = default_config

file = open(iplist_path, 'r')
for line in file:
    ip = line[:-1]
    # Skip comments and empty lines
    if (len(ip)==0) or (ip[0] == '#'):
        continue
    data += '-A OUTPUT -d ' + ip + ' -j DROP\n'

data += 'COMMIT\n'

with open('/etc/iptables/iptables.rules', 'w') as file:
    file.writelines(data)
