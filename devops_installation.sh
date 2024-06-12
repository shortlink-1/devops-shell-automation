#!/bin/bash

main() {
    if [[ $(uname) == "Linux" ]]; then 
        Distro=$(lsb_release -si)
        if [[ $Distro == "Ubuntu" ]]; then
            echo "Ubuntu --> apt"
            read -p "Do you want to install Git? [y/n]: " install_git
            if [[ $install_git == "y" ]]; then
                echo "Installing Git..."
            fi
        elif [[ $Distro == "Fedora" ]]; then
            echo "Fedora --> dnf"
        elif [[ $Distro == "CentOS" || $Distro == "RedHatEnterpriseServer" ]]; then
            echo "CentOS / RHEL-based --> yum"
        else
            echo "Unknown distribution: $Distro"
        fi
    else
        echo "Not Linux"
    fi
}

# Call the main function to start the installation process
main
