cd ~ &&
sudo pacman -S bspwm feh git kitty pavucontrol pulseaudio rofi sddm spectacle sxhkd terminus-font xorg xorg-server mesa lib32-mesa xf86-video-intel vulkan-intel &&
git clone https://aur.archlinux.org/paru.git &&
cd paru &&
makepkg -si &&
cd ~ &&
paru -S cava picom-jonaburg-git polybar terminus-font-ttf &&
sudo cp dotfiles/.config .config/ &&
echo “alias s=‘killall sxhkd && sxhkd’” > .bashrc &&
systemctl enable sddm &&
chmod u+x ~/.config/bspwm/bspwmrc &&
chmod u+x ~/.config/polybar/launch.sh
