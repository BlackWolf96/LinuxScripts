#!/bin/bash

sudo apt purge -y nodejs
sudo apt -y auto-remove
curl -fsSL https://deb.nodesource.com/setup_16.x | sudo -E bash -
sudo apt install -y nodejs