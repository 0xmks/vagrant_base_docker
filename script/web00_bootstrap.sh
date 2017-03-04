#!/bin/bash

# locale
sudo localectl set-locale LANG=ja_JP.utf8

# timezone
sudo timedatectl set-timezone Asia/Tokyo

# git
sudo yum install -y git
