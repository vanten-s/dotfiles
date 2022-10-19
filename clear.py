#!/bin/python3

import random
import os

with open("/home/svante/distros.txt", "r") as f:
    distro = random.choice(f.read().split())

commands = ["misfortune | cowsay -f $(ls /usr/share/cows | shuf -n 1)", f"neofetch --ascii_distro {distro}"]

os.system("clear")
out = os.system(random.choice(commands))
if out != 0:
    os.system("clear")
    os.system(random.choice(commands))

print("\n" + distro)

