## About

Easy set up of Vim

## NOTES:

Must install vim, vim.tiny not sufficient.

The following assumes repo cloned in $HOME.
**Will clobber .vim and .vimrc**
Architecture dependent command  in buildYCM.sh


```bash
mv $HOME/VimConfig/ .vim
ln -s $HOME/.vim/config/.vimrc $HOME/.vimrc
```

```bash
cd .vim/setup
chmod +x ./plugin-dependencies.sh ./installNeoBundle.sh ./buildYCM.sh
```
```bash
./plugin-dependencies.sh
./installNeoBundle.sh
```
```bash
vim +NeoBundleInstall +qall
```
```bash
./buildYCM.sh
```
