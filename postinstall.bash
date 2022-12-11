## REMOVING POSSIBLE APT LOCKS
sudo rm /var/lib/dpkg/lock-frontend
sudo rm /var/cache/apt/archives/lock

# REMOVE TELEMETRY
sudo apt purge ubuntu-report popularity-contest apport whoopsie apport-symptoms && sudo apt-mark hold ubuntu-report popularity-contest apport whoopsie apport-symptoms

# UPDATE
sudo apt-get update && sudo apt-get upgrade -y

# INSTALL TWEAK TOOLS AND EXTENSIONS
sudo apt install gnome-tweaks
sudo apt install gnome-shell-extensions

# INSTALL MULTIMEDIA CODECS
sudo apt install ubuntu-restricted-extras

# REMOVE SNAP FIREFOX
sudo snap remove --purge firefox
sudo snap remove --purge snap-store

# INSTALL FLATPACK
sudo apt-get install flatpak
sudo apt-get install gnome-software-plugin-flatpak

# INSTALL GNOME-SOFTWARE
sudo apt install gnome-software gnome-software-plugin-flatpak gnome-software-plugin-snap

# ENABLE FIREWALL
sudo ufw enable
sudo apt-get install gufw # firewall gui

# INSTALL TIMESHIFT
sudo apt install timeshift

# INSTALL BRAVE
sudo apt install apt-transport-https curl

sudo curl -fsSLo /usr/share/keyrings/brave-browser-archive-keyring.gpg https://brave-browser-apt-release.s3.brave.com/brave-browser-archive-keyring.gpg

echo "deb [signed-by=/usr/share/keyrings/brave-browser-archive-keyring.gpg arch=amd64] https://brave-browser-apt-release.s3.brave.com/ stable main"|sudo tee /etc/apt/sources.list.d/brave-browser-release.list

sudo apt update

sudo apt install brave-browser

# INSTALL KEEPASSXC
sudo apt install keepassxc

# INSTALL DOCKER
sudo apt install apt-transport-https ca-certificates curl software-properties-common gnupg lsb-release

curl -fsSL https://download.docker.com/linux/ubuntu/gpg | sudo gpg --dearmor -o /usr/share/keyrings/docker-archive-keyring.gpg

echo "deb [arch=$(dpkg --print-architecture) signed-by=/usr/share/keyrings/docker-archive-keyring.gpg] https://download.docker.com/linux/ubuntu $(lsb_release -cs) stable" | sudo tee /etc/apt/sources.list.d/docker.list > /dev/null

sudo apt update

sudo apt install docker-ce

# INSTALL VIRTUALBOX
sudo apt install virtualbox

# INSTALL INSOMNIA

echo "deb [trusted=yes arch=amd64] https://download.konghq.com/insomnia-ubuntu/ default all" \
    | sudo tee -a /etc/apt/sources.list.d/insomnia.list

sudo apt-get update
sudo apt-get install insomnia

# INSTALL QBITTORRENT
sudo apt install qbittorrent

# INSTALL LIBREOFFICE
sudo add-apt-repository ppa:libreoffice/ppa
sudo apt update -y
sudo apt install libreoffice

# INSTALL GIT
sudo apt install git

# CREATE SWAP FILE
sudo fallocate -l 8G /swapfile
sudo mkswap /swapfile
sudo swapon /swapfile
sudo cp /etc/fstab /etc/fstab.bak
echo '/swapfile none swap sw 0 0' | sudo tee -a /etc/fstab

# UPDATE
sudo apt-get update && sudo apt-get upgrade -y

# CLEAN
sudo apt-get autoclean
sudo apt-get autoremove
sudo apt-get clean

# TODO
# install vs code
# install mega
# install veracrypt
# calendar, cheese, videos, image view = ubuntu software
