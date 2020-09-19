#!/usr/bin/python
import sys

filename = sys.argv[1]
kern_params = sys.argv[2]

with open(filename, 'r') as file:
    data = file.readlines()

need_to_add_params = (data[-1].find(kern_params) == -1)

if need_to_add_params: 
  data[-1] = data[-1][:-1] + ' ' + kern_params + '\n'
  with open(filename, 'w') as file:
      file.writelines(data)
