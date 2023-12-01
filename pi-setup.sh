#!/bin/bash

install_docker() {
    echo -e "\033[32mInstalling Docker...\033[0m"
    curl -sSL https://get.docker.com | sh
    echo "Adding $USER to the docker group"
    sudo usermod -aG docker $USER
    echo -e "\033[32mDocker installation complete.\033[0m"
}

install_ufw() {
    echo -e "\033[32mInstalling UFW...\033[0m"
    sudo apt-get update
    sudo apt-get install -y ufw
    echo -e "\033[32mUFW installation complete.\033[0m"
}

install_fail2ban() {
    echo -e "\033[32mInstalling Fail2Ban...\033[0m"
    sudo apt-get update
    sudo apt-get install -y fail2ban
    echo -e "\033[32mFail2Ban installation complete.\033[0m"
}

# Check if Docker is installed
if ! command -v docker &> /dev/null
then
    echo "Docker could not be found, starting installation."
    install_docker
else
    echo -e "\033[35mDocker is already installed. Version: $(docker --version)\033[0m"
fi

# Check if UFW is installed
if ! command -v ufw &> /dev/null
then
    echo "UFW could not be found, starting installation."
    install_ufw
else
    echo -e "\033[35mUFW is already installed.\033[0m"
fi

# Check if Fail2Ban is installed
if ! command -v fail2ban-client &> /dev/null
then
    echo "Fail2Ban could not be found, starting installation."
    install_fail2ban
else
    echo -e "\033[35mFail2Ban is already installed.\033[0m"
fi
