#TODO:
# get lip from env if not passed as arg; get random free lport if not pass as args
# bash, nc, ncat, perl, ruby - listen with nc/pwncat
# msf gen meterpreter and  autostart listener with ruby script
# 

# Get free port
s = socket.socket(socket.AF_INET, socket.SOCK_STREAM)
s.bind(('', 0))
port = s.getsockname()[1]

