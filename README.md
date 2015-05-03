## About

Easy set up of Vim

## NOTES:

###Will clobber .vim and .vimrc

Must install vim, vim.tiny not sufficient.

##Instructions

```bash
cd
git clone https://github.com/PaulTomchik/VimConfig.git

mv $HOME/VimConfig/ .vim
ln -s $HOME/.vim/config/.vimrc $HOME/.vimrc
```

```bash
cd .vim/setup
chmod +x ./plugin-dependencies.sh ./installNeoBundle.sh ./buildYCM.sh

./plugin-dependencies.sh
./installNeoBundle.sh

vim +NeoBundleInstall +qall

./buildYCM.sh
```
