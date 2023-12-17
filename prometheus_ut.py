#!/usr/bin/python3
import os
import sys
import socket
import subprocess
import time
import getpass


## user = getpass.getuser()
## sudo = subprocess.getoutput("groups "+user+"| grep -oE sudo")
## ip = subprocess.getoutput("hostname -I").strip()

def menu():
    option = input("Available options: \
        \n1. Install Prometheus \
        \n2. Launch Prometheus \
        \n3. Delete Prometheus \
        \n4. Console Status \
        \n5. Exit installer \
        \n\nEnter what you need to do:")
    options = {
        "1": installPro,
        "2": runPro,
        "3": deletePro,
        "4": conStat,
        "5": exit
    }
    todo = options.get(option)
    todo()


def installPro():
    comIns = ['sudo chmod +x ./ instal_scipt',
                'sudo ./instal_script']
    osCommand = '\n'.join(comIns)
    os.system(osCommand)
    time.sleep(5)
    menu()

def runPro():
    comRun = ['sudo chmod +x ./ start_prometheus',
                'sudo ./ start_prometheus',]
    osCommand = '\n'.join(comRun)
    os.system(osCommand)
    time.sleep(5)
    print("\nPrometheus is running!\n")
    print("\nPress 'CTRL + Z'  to stop\n")
    menu()


def deletePro():
    comDel = ['sudo chmod +x ./ delete_script',
                'sudo ./ delete_script',]
    osCommand = '\n'.join(comDel)
    os.system(osCommand)


def conStat():
    comStat = ['sudo chmod +x ./ console_status',
                'sudo ./ console_status',]
    osCommand = '\n'.join(comStat)
    os.system(osCommand)
    menu()
def webInfo():
    comWeb =  ['sudo chmod +x ./ take_info',
                'sudo ./ take_info',]
    osCommand = '\n'.join(comWeb)
    os.system(osCommand)
    menu()


def exit():
    sys.exit()


if __name__ == '__main__':
    menu()
