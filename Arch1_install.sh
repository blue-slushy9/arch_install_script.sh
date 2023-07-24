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

# OR

fdisk -l

# The standard sector size (fundamental unit of storage space) is 512 bytes;

'''

# The ideal disk layout, per this author, is as follows:

EFI = 1 GB

# ChatGPT says you do probably not need a boot partition for the VM;
Boot

/ = 10 GBs

home = 7 GBs

# Swap should be equal, in this case, to the VM RAM, which is 2GB;
swap = 2 GB

Total Disk Space = 20 GBs

'''

# Prep the block/storage device for partitioning;

fdisk /dev/vda

# Once in fdisk mode, you can type 'n' to create a new partition;

#n

# You won't need to use extended partitions (which are used to bypass the
# limit of 4 primary partitions on a single MBR disk);

#p

# The partition numbers will be 1-4, you can just hit Enter to use the default
# numbers;

# First sector will the EFI partition, you can make it 1 GB; you can hit Enter
# to use the default first partition on all of these;

#+1G

# Second sector will be the root partition, you can make it 10 GBs;

#+10G

# Third partition will be the home partition, you can make it 7 GBs;
#+7G

# The last partition is the swap partition, it can be 2 GBs;
# you can just hit Enter for the default last sector (we are using all of the
# remaining disk space anyway);

# Finally, type 'w' to write your configuration to the disk;
#w

#  
