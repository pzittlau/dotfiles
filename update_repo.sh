SCRIPT_DIR=$( cd -- "$( dirname -- "${BASH_SOURCE[0]}" )" &> /dev/null && pwd)

cp -r ~/.config/awesome $SCRIPT_DIR/.config
cp -r ~/.config/kitty $SCRIPT_DIR/.config
cp -r ~/.config/nvim $SCRIPT_DIR/.config
cp ~/.bash_aliases $SCRIPT_DIR
cp ~/.bashrc $SCRIPT_DIR
cp ~/.xinitrc $SCRIPT_DIR
cp ~/.Xmodmap $SCRIPT_DIR
sudo cp /etc/X11/xorg.conf.d/50-touchpad.conf .
sudo cp /etc/apt/sources.list .
