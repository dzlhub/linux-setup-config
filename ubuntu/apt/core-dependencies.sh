#!/bin/bash

################################################################################
#
#  Name:           Core dependancies for Ubuntu
#  Version:        1.0.0.20241215
#  Description:    A bash script to install core dependancies for Ubuntu, which
#                  which are used for most third party APT packages
#
#  Author:         SchmittyD
#  Created:        07/12/2024   (AEST)
#  Updated:        15/12/2024	(AEST)
#  Github:         https://github.com/dzlhub/linux_bash_scripts
#  Email:          email
#  Website:        website
#  Twitter:        https://twitter.com/schmittyd
#
################################################################################


sudo apt install -y net-tools ca-certificates curl wget htop iftop unzip dnsutils
sudo install -m 0755 -d /etc/apt/keyrings
