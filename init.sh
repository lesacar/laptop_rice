git_path=$(pwd)

ping archlinux.org -c 1 1>/dev/null || echo "An active internet connection is required"
sudo pacman -S --needed wget --noconfirm

echo -e "You are expected to have already installed video drivers and other essential drivers (y/n)"
read answer1

if [ "$answer1" != "y" ]
then
	exit
fi

# Download wallpaper
wget https://static.wikia.nocookie.net/warframe/images/5/59/VoidSkybox.jpg/revision/latest/scale-to-width-down/1920?cb=20200916230512
mv -v 1920\?cb\=20200916230512 void.jpg
mkdir -p $HOME/.config/wallpaper
mv -v void.jpg $HOME/.config/wallpaper/void.jpg


echo -e "User verification complete\n\nThis process might take a while"

optional="pcmanfm"

sudo pacman -S wmname scrot libnotify ttf-liberation $optional base-devel ttf-font-awesome libx11 libxft dunst picom libxinerama freetype2 fontconfig xwallpaper xorg-server xorg-xinit xorg-xrandr base-devel ttf-jetbrains-mono-nerd --noconfirm || echo "Something went wrong with pacman"

make -j$(nproc) && sudo make clean install || echo -e "\n\n\n\n\ndmenu failed to compile\n\n\n\n\n" && exit
cd ..

cd dwmblocks
make -j$(nproc) && sudo make clean install || echo -e "\n\n\n\n\ndwmblocks failed to compile\n\n\n\n\n" && exit
cd $git_path

# currently in linux/
cd dwm
make -j$(nproc) && sudo make clean install|| echo -e "\n\n\n\n\ndwm failed to compile\n\n\n\n\n" && exit
cd $git_path

cp -v xc/.xinitrc $HOME/.xinitrc
sudo cp -v xc/profile /etc/profile

echo -e "source /etc/profile" >> $HOME/.bashrc

echo -e "Execution complete\n"

sh bin/mv.sh 


# echo -e "Optionally download browser?"
