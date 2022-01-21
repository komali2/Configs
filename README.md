# Configs
I was tired of copying my configs all over the place on each of my new OS installs. So, they're all here now.

# Reinstall Steps

1. Get your secret.gpg from somewhere
2. In the directory of secret.gpg, run gpg2 --import /path/to/secret.gpg (probably will need to install gnupg)
3. Install a bunch of shit:
```
sudo apt install wget curl git gnome-tweak-tool npm xclip gdebi-core pipenv offlineimap silversearcher-ag pass sqlite3
```
4. Get an ssh sorted:

```
ssh-keygen-t rsa -b 4096 -C "someemail@email.com"
eval "$(ssh-agent -s)"
ssh-add ~/.ssh/id_rsa
xclip -sel clip < ~/.ssh/id_rsa.pub
```

Add the ssh key to github, gitlab, anywhere else.
5. Install emacs
```
wget https://ftp.gnu.org/gnu/emacs/emacs-27.2.tar.xz
tar -xf emacs-27.2.tar.xz 


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
```
9. Get gtile

* https://github.com/gTile/gTile

10. Install dropbox

## Useful Articles

* https://medium.com/@chasinglogic/the-definitive-guide-to-password-store
