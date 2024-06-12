

#command : uname gives linux you can use uname -srm 
#output :  Linux 6.2.0-39-generic x86_64
#command : to get DIstrubution_id  is lsb_release -a
#output : No LSB modules are available.
 #          Distributor ID: Ubuntu
  #         Description:    Ubuntu 22.04.3 LTS
    #       Release:        22.04
   #        Codename:       jammy

# 2>: This indicates the redirection of the standard error stream.
#/dev/null: This is a special device file that discards all data written to it. It's often used as a "black hole" to discard unwanted output.
#command :lsb_release -a 2>/dev/null^C grep "Distributor ID" | awk '{print $3}'  or lsb_release -si
#output  :ubantu 


# installing git software in different flavores of linux  -->Ubuntu / Debian-based: Fedora / CentOS / RHEL-based:



if [[ $(uname) == "Linux" ]]; then 
    Distro=$(lsb_release -si)
    if [[ $Distro == "Ubuntu" ]]; then
        echo "Ubuntu --> installing git "
        
         sudo apt update
         sudo apt install git -y
         echo "git installation is succesful"

    elif [[ $Distro == "Fedora" ]]; then
        echo "Fedora --> installing git"
         sudo dnf install git -y

        
    elif [[ $Distro == "CentOS" || $Distro == "RedHatEnterpriseServer" ]]; then
        echo "CentOS / RHEL-based -->installing git"
         sudo yum install git -y

       
    else
        echo "Unknown distribution: $Distro"
    fi
else
    echo "Not Linux"
fi
