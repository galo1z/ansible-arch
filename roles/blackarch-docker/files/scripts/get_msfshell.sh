#gen shell by msfvenom
#copy it to fileserver;
#then start msfconsole listener with corrent args

# Get free port
s = socket.socket(socket.AF_INET, socket.SOCK_STREAM)
s.bind(('', 0))
port = s.getsockname()[1]
