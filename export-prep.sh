#!/bin/bash

# Clean out downloaded packages
sudo apt-get clean
sudo aptitude clean

# Clean up apt cache
sudo rm /var/lib/apt/lists/*   # 44mb
sudo rm /var/lib/apt/lists/partial/*

# Zero-fill unused sectors on vm disk
# Zero-filled sectors compress very nice :-)  
# No need to export sectors for files that could be "undeleted"
sudo dd if=/dev/zero of=/zerofile; sudo rm /zerofile
