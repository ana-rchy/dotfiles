cd ~ &&
git clone https://aur.archlinux.org/paru-bin.git &&
cd paru-bin &&
makepkg -si &&
cd ~ &&
sudo pacman -S bspwm feh kitty pavucontrol polkit-kde-agent pulseaudio rofi sddm spectacle sxhkd terminus-font xorg xorg-server nvidia nvidia-settings lib32-nvidia-utils &&
paru -S cava-git picom-jonaburg-git polybar terminus-font-ttf &&
sudo cp -r ~/dotfiles/.config/* ~/.config &&
systemctl enable sddm &&
sudo chmod u+x ~/.config/bspwm/bspwmrc &&
sudo chmod u+x ~/.config/polybar/launch.sh &&
echo "alias s='killall sxhkd && sxhkd'" >> .bashrc &&
echo "alias nascii='neofetch -L --source ~/dotfiles/oneshot.txt --ascii_colors 16 17 18 19 20 21 22 23 24 25 26 27 28 29 30 31 32 33 34 35 36 37 38 39 40 41'" >> .bashrc
echo "alias ninfo='neofetch --off --colors 14 12 23 13 14'" >> .bashrc
