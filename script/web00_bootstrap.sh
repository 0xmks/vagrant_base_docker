#!/bin/bash

# locale
sudo localectl set-locale LANG=ja_JP.utf8
sudo localectl status

# timezone
sudo timedatectl set-timezone Asia/Tokyo
sudo timedatectl status

# git
sudo yum install -y git
