
```
git checkout -b somebranch
git push -u origin somebranch
```
alias: 
```
git config --global alias.new '!f() { git checkout -b "$1" && git push -u origin "$1"; }; f'
```
