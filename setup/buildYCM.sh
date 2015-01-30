cd ~/.vim/bundle/YouCompleteMe
git submodule update --init --recursive

mkdir -p /home/paul/ycm_temp/llvm_root_dir
pushd /home/paul/ycm_temp/
# FIXME Architecture dependent line
# wget http://llvm.org/releases/3.3/clang+llvm-3.3-armv7-linux-gnueabihf.tar.gz 
#tar -xvf clang+llvm-3.5.1-armv7a-linux-gnueabihf.tar.xz 
#mv clang+llvm-3.5.1-armv7a-linux-gnueabihf llvm_root_dir

#wget http://llvm.org/releases/3.3/clang+llvm-3.3-Ubuntu-13.04-x86_64-linux-gnu.tar.bz2
#tar -xvf clang+llvm-3.3-Ubuntu-13.04-x86_64-linux-gnu.tar.bz2 
#mv clang+llvm-3.3-Ubuntu-13.04-x86_64-linux-gnu.tar.bz2 llvm_root_dir

cd ~
mkdir -p ycm_build
cd ycm_build
#cmake -G "Unix Makefiles" -DPATH_TO_LLVM_ROOT=/home/paul/ycm_temp/llvm_root_dir . /home/paul/.vim/bundle/YouCompleteMe/third_party/ycmd/cpp
cmake -G "Unix Makefiles" . /home/paul/.vim/bundle/YouCompleteMe/third_party/ycmd/cpp
make ycm_support_libs
make
