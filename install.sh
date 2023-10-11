#!/bin/bash
SCRIPT_DIR=$( cd -- "$( dirname -- "${BASH_SOURCE[0]}" )" &> /dev/null && pwd)

xdg-user-dirs-update 
sudo apt install nala -y

# for nodejs for lsp
sudo mkdir -p /etc/apt/keyrings
curl -fsSL https://deb.nodesource.com/gpgkey/nodesource-repo.gpg.key | sudo gpg --dearmor -o /etc/apt/keyrings/nodesource.gpg
NODE_MAJOR=20
echo "deb [signed-by=/etc/apt/keyrings/nodesource.gpg] https://deb.nodesource.com/node_$NODE_MAJOR.x nodistro main" | sudo tee /etc/apt/sources.list.d/nodesource.list
sudo nala update

# install
sudo nala install xorg feh awesome awesome-extra x11-xserver-utils rofi kitty vlc firefox-esr x11-common xserver-xorg-input-all desktop-base xserver-xorg-video-all alsa-utils pipewire pavucontrol network-manager vim wget zip unzip 7zip curl tldr git build-essential gettext cmake fonts-font-awesome fonts-noto-color-emoji acpid tlp blueman brightnessctl pamixer pipewire-alsa playerctl firmware-misc-nonfree htop python3-pip python3-pynvim python3-venv ssh lightdm ripgrep fuse openconnect ca-certificates gnupg nodejs -y

# neovim
mkdir ~/github/
cd ~/github/
git clone https://github.com/neovim/neovim
cd neovim/
git checkout stable
make CMAKE_BUILD_TYPE=RelWithDebInfo
sudo make install

# z
cd ~/github/
git clone https://github.com/rupa/z.git

# obsidian
cd ~/github/
mkdir obsidian && cd obsidian
wget https://github.com/obsidianmd/obsidian-releases/releases/download/v1.4.14/Obsidian-1.4.14.AppImage
chmod u+x Obsidian-1.4.14.AppImage
sudo ln -s ~/github/obsidian/Obsidian-1.4.14.AppImage /usr/local/bin/Obsidian

# systemctl stuff
sudo systemctl enable lightdm
sudo systemctl set-default graphical.target

sudo systemctl enable --now acpid
sudo systemctl enable --now tlp
systemctl enable --now --user pipewire-pulse.service
systemctl enable --now --user pipewire.service

sudo service networking stop
sudo systemctl disable --now networking
sudo systemctl enable --now NetworkManager
sudo systemctl restart NetworkManager

# fonts
cd
mkdir ~/.fonts
curl -OL https://github.com/ryanoasis/nerd-fonts/releases/download/FiraMono.zip
unzip FiraMono.zip -d ~/.fonts/
fc-cache -vf
rm ./FiraMono.zip

# Config
$(SCRIPT_DIR)/update_local.sh

tldr -u

# nmcli c delete eduroam
# nmcli connection add type wifi con-name "eduroam" ifname wlp0s20f3 ssid "eduroam" wifi-sec.key-mgmt wpa-eap 802-1x.identity "pazittla@ovgu.de" 802-1x.system-ca-certs yes 802-1x.eap "peap" 802-1x.phase2-auth mschapv2
