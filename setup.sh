#!/bin/bash
sudo apt update
sudo apt upgrade -y
sudo apt install build-essential cmake gdb qt6-base-dev -y
git clone https://github.com/emorywalrus/serverRepo.git
