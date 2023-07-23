#!/bin/bash

# This is for an Arch Linux VM running on KVM on Debian 12;

# View your network interfaces (the VM, not the host system, which has
# 1 ethernet and 1 wireless interface);

ip link

# Verify your internet connection;

ping archlinux.org

# View time settings;

timedatectl

# Set timezone to PST;

timedatectl set-timezone America/Los_Angeles

# View connected block (storage) devices;

lsblk

OR

fdisk -l

# The standard sector size (fundamental unit of storage space) is 512 bytes;

'''

The ideal disk layout, per this author, is as follows:

EFI = 1 GB

Boot = 1 GB

/ = 30 GBs

home = 20 GBs

# should be equal, in this case, to the VM RAM, which is 2GB
swap = 2 GB

'''


