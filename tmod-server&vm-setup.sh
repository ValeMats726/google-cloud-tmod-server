sudo apt update
sudo apt install --assume-yes wget tasksel
[[ $(/usr/bin/lsb_release --codename --short) == "stretch" ]] && \
   sudo apt install --assume-yes libgbm1/stretch-backports
wget https://dl.google.com/linux/direct/chrome-remote-desktop_current_amd64.deb
sudo apt-get install --assume-yes ./chrome-remote-desktop_current_amd64.deb
sudo DEBIAN_FRONTEND=noninteractive \
    apt install --assume-yes xfce4 desktop-base dbus-x11 xscreensaver
sudo bash -c 'echo "exec /etc/X11/Xsession /usr/bin/xfce4-session" > /etc/chrome-remote-desktop-session'
sudo apt install --assume-yes task-xfce-desktop
sudo systemctl disable lightdm.service
wget https://dl.google.com/linux/direct/google-chrome-stable_current_amd64.deb
sudo apt install --assume-yes ./google-chrome-stable_current_amd64.deb
sudo apt update && sudo apt install -y wget tmux unzip
# Linux Server Install Script v1.1 by Chicken-Bones (some changes by jopojelly)
wget https://api.github.com/repos/tModLoader/tModLoader/releases/latest -O tMLlatest.json
tml=`sed -n 's/.*\(https.*Linux.*.tar.gz*\)".*/\1/p' tMLlatest.json`
wget $tml
tar xvzf tModLoader.Linux*.tar.gz
chmod a+x tModLoader tModLoader-* tModLoaderServer *.bin*
rm *.zip *.tar.gz *.jar tMLlatest.json
sudo apt install zip unzip