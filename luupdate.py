from guizero import *
import os
def update():
    old = os.listdir("/lupdate")
    os.system("rm update.sh")
    os.system("wget https://raw.githubusercontent.com/apage-pi/linux.unify/main/update.sh")
    os.system("chmod +x update.sh")
    os.system("./update.sh")
    new = os.listdir("/lupdate")
    if new == old:
        updater.info("Linux.Unify Updater", "System already version 22.10.2. Skipped Update.")
    else:
        updater.info("Linux.Unify Updater", "System updated to 22.10.2. Update Complete.")
updater = App(title="Linux.Unify System Manager")
explain = Text(updater, text="Select an action:")
updatebutton = PushButton(updater, text="Update", command=update)
updater.display()
