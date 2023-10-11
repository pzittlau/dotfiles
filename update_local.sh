SCRIPT_DIR=$( cd -- "$( dirname -- "${BASH_SOURCE[0]}" )" &> /dev/null && pwd)

cp -r $SCRIPT_DIR/.config ~
cp $SCRIPT_DIR/.bash_aliases ~
cp $SCRIPT_DIR/.bashrc ~
cp $SCRIPT_DIR/.xinitrc ~
cp $SCRIPT_DIR/.Xmodmap ~
sudo cp $SCRIPT_DIR/50-touchpad.conf /etc/X11/xorg.conf.d/ 
sudo cp $SCRIPT_DIR/sources.list /etc/apt/
