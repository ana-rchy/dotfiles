cd ~ &&
git clone https://aur.archlinux.org/paru.git &&
cd paru &&
makepkg -si &&
cd ~ &&
sudo pacman -S bspwm feh git kitty pavucontrol pulseaudio rofi sddm spectacle sxhkd terminus-font xorg xorg-server mesa lib32-mesa xf86-video-intel vulkan-intel &&
paru -S cava picom-jonaburg-git polybar terminus-font-ttf &&
mkdir ~/.config/bspwm/ ~/.config/cava/ ~/.config/kitty/ ~/.config/polybar/ ~/.config/rofi/ ~/.config/sxhkd/ &&
sudo cp ~/dotfiles/.config ~/.config &&
systemctl enable sddm &&
chmod u+x ~/.config/bspwm/bspwmrc &&
chmod u+x ~/.config/polybar/launch.sh &&
echo "\nalias s='killall sxhkd && sxhkd'" >> .bashrc &&
echo "\nalias nascii='neofetch -L --source ~/dotfiles/oneshot.txt --ascii_colors 16 17 18 19 20 21 22 23 24 25 26 27 28 29 30 31 32 33 34 35 36 37 38 39 40 41'" >> .bashrc
