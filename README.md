# Configs
I was tired of copying my configs all over the place on each of my new OS installs. So, they're all here now.

# Reinstall Steps

1. Get your secret.gpg from somewhere
2. In the directory of secret.gpg, run gpg2 --import /path/to/secret.gpg (probably will need to install gnupg)

```bash
gpg2 --import /path/to/secret.gpg
git clone ssh://git@<your server's ip>:/home/git/pass-repo ~/.password-store
```

3. Install a bunch of shit:
```
sudo apt install wget curl git gnome-tweak-tool npm xclip gdebi-core pipenv offlineimap silversearcher-ag pass sqlite3 nvim net-tools
git config --global user.name "Caleb Rogers"
git config --global user.email "caleb@calebjay.com"
```
4. Get an ssh sorted:

```
ssh-keygen -t ed25519 -C "your_email@example.com"
eval "$(ssh-agent -s)"
ssh-add ~/.ssh/id_rsa
xclip -sel clip < ~/.ssh/id_rsa.pub
```

Add the ssh key to github, gitlab, anywhere else.
5. Install emacs
```
git clone git://git.savannah.gnu.org/emacs.git
cd emacs
git checkout emacs-28
sudo apt  install build-essential texinfo libx11-dev libxpm-dev libjpeg-dev libpng-dev libgif-dev libtiff-dev libgtk-3-dev libncurses-dev libgnutls28-dev 
sudo apt install libxpm-dev libgif-dev libjpeg-dev libpng-dev libtiff-dev libx11-dev libncurses5-dev automake autoconf texinfo libgtk2.0-dev
sudo add-apt-repository ppa:ubuntu-toolchain-r/ppa
sudo apt install gcc-10 g++-10 libgccjit0 libgccjit-10-dev libjansson4 libjansson-dev
sudo apt install xaw3dg-dev
sudo apt install librsvg2-dev
sudo apt install liblcms2-dev imagemagick libgpm-dev libxml2-dev libotf-dev libjansson-dev
export CC=/usr/bin/gcc-10 CXX=/usr/bin/gcc-10
./autogen.sh
./configure --with-cairo --with-modules --without-compress-install --with-gnutls --with-mailutils --with-native-compilation --with-json --with-harfbuzz --with-imagemagick --with-jpeg --with-png --with-rsvg --with-tiff --with-wide-int --with-xft --with-xml2 --with-xpm CFLAGS="-O3 -mtune=native -march=native -fomit-frame-pointer" prefix=/usr/local
make -j$(nproc)
sudo make install

```
6. Install spacemacs

```
git clone https://github.com/syl20bnr/spacemacs ~/.emacs.d
cd ~/.emacs.d
git checkout develop
```

7. Install chrome maybe

```
wget https://dl.google.com/linux/direct/google-chrome-stable_current_amd64.deb
sudo gdebi google-chrome-stable_current_amd64.deb
```

8. Mail, oh god

* Install mu4e, may need to be do that via non apt.
* Clone pass repo into ~/.password-store

```
sudo apt install mu mu4e
cp ~/src/Configs/.offlineimaprc ~/
cp ~/src/Configs/.offlineimap.py ~/
offlineimap
mu init --maildir=~/Mail --my-address=jim@example.com 
```
9. Get gtile

* https://github.com/gTile/gTile

10. Install syncthing

```
sudo curl -s -o /usr/share/keyrings/syncthing-archive-keyring.gpg https://syncthing.net/release-key.gpg
echo "deb [signed-by=/usr/share/keyrings/syncthing-archive-keyring.gpg] https://apt.syncthing.net/ syncthing stable" | sudo tee /etc/apt/sources.list.d/syncthing.list
echo "deb [signed-by=/usr/share/keyrings/syncthing-archive-keyring.gpg] https://apt.syncthing.net/ syncthing candidate" | sudo tee /etc/apt/sources.list.d/syncthing.list
sudo apt-get update
sudo apt-get install syncthing
```

11. Trust gpg keys 
* https://stackoverflow.com/questions/33361068/gnupg-there-is-no-assurance-this-key-belongs-to-the-named-user

12. install nvm

https://github.com/nvm-sh/nvm
## Useful Articles

* https://medium.com/@chasinglogic/the-definitive-guide-to-password-store


## If Manjaro

```bash
sudo pacman -Syu 
sudo sed -Ei '/EnableAUR/s/^#//' /etc/pamac.conf
sudo pamac install brave-bin
sudo pacman -Syu arandr xcape libgccgit imagemagick autoconf automake build-essential


```
