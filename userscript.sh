echo installing software, authenticate with "su" to escalate
wget https://raw.githubusercontent.com/dhirsch1138/SucklessSource/master/installscript.sh installscript.sh
chmod +x installscript.sh
su --command="./installscript.sh"
echo pulling down our suckless software git repo
cd ~
mkdir Projects
cd Projects
mkdir suckless
git clone https://github.com/dhirsch1138/SucklessSource suckless
echo compiling suckless tools, authenticate with "su" to escalate
cd suckless
chmod +x compilesuckless.sh
su --command="./compilesuckless.sh"
echo building config files for this user
touch ~/.xsessionrc
echo "exec dwm" > ~/.xsessionrc
cd ~
mkdir .config
cd .config
mkdir pnmixer
cd pnmixer
cp ~/Projects/suckless/configdefaults/pnmixer/config config
