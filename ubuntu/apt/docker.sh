#!/bin/bash

################################################################################
#
#  Name:           Docker Installation Script for Ubuntu
#  Version:        1.0.0.20241215
#  Description:    This bash script installs the Docker GPG key, adds the
#                  the Docker repository to APT sources and installs the
#                  Docker Engine, Docker Engine CLI and Docker Compose Plugin
#
#  Author:         SchmittyD
#  Created:        15/12/2024   (AEST)
#  Updated:        15/12/2024	(AEST)
#  Github:         https://github.com/dzlhub/linode-stackscripts
#  Email:          email
#  Website:        https://dev.dzlhub.xyz
#  Twitter:        https://twitter.com/profile
#
################################################################################


# This updates the packages on the system from the distribution repositories.
apt update -y
apt upgrade -y

# Add Docker's official GPG key:
sudo curl -fsSL https://download.docker.com/linux/ubuntu/gpg -o /etc/apt/keyrings/docker.asc
sudo chmod a+r /etc/apt/keyrings/docker.asc

# Add the repository to Apt sources:
echo \
  "deb [arch=$(dpkg --print-architecture) signed-by=/etc/apt/keyrings/docker.asc] https://download.docker.com/linux/ubuntu \
  $(. /etc/os-release && echo "$VERSION_CODENAME") stable" | \
  sudo tee /etc/apt/sources.list.d/docker.list > /dev/null
sudo apt update
sudo apt install docker-ce docker-ce-cli containerd.io docker-buildx-plugin docker-compose-plugin
