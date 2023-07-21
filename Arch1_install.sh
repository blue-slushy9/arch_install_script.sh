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

# 


