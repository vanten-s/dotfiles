
import sys
import subprocess

letters = "abcdefghijklmnopqrstuvwxyzåäö"

def get_beginning ( string ) :
    if "▶" in string:
        return string.index("▶")

    elif "⏸" in string:
        return string.index("⏸")

res = subprocess.run(['spt', 'pb'], capture_output=True).stdout.decode()[:-1]
prefix = res[:get_beginning(res)+1]
res = res[get_beginning(res)+1:]

with open("/home/svante/playing.txt", "w") as f:
    # f.write(" %{F#b4befe}" + prefix + "%{F#a6e3a1}" + res + " ")
    f.write(" %{F#b4befe}" + prefix + "%{F-}" + res + " ")

with open("/home/svante/prefix.txt", "w") as f:
    f.write(prefix)

with open("/home/svante/times.txt", "r") as f:
    r = f.read()

with open("/home/svante/times.txt", "w") as f:
    f.write(str(int(r) + 1))


