#!/usr/bin/python

import subprocess

result = subprocess.run(["/usr/bin/spt", "pb"], capture_output=True)
returnVal = result.stdout.decode()
    
print(returnVal)


