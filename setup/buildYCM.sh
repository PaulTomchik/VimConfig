LLVM_ADDR="http://llvm.org/releases/"
LLVM_VER="3.6.0"
CLANG_VER="clang+llvm-3.6.0-x86_64-linux-gnu-ubuntu-14.04"
EXTENSION=".tar.xz"
ENDPT="${LLVM_ADDR}${LLVM_VER}/${CLANG_VER}${EXTENSION}"


cd ~/.vim/bundle/YouCompleteMe
git submodule update --init --recursive

mkdir -p /home/paul/ycm_temp/llvm_root_dir
pushd /home/paul/ycm_temp/

# For ARM7 chip.
# wget http://llvm.org/releases/3.3/clang+llvm-3.3-armv7-linux-gnueabihf.tar.gz 
#tar -xvf clang+llvm-3.5.1-armv7a-linux-gnueabihf.tar.xz 
#mv clang+llvm-3.5.1-armv7a-linux-gnueabihf llvm_root_dir

wget $ENDPT
tar -xvf "${CLANG_VER}${EXTENSION}"
mv "${CLANG_VER}" llvm_root_dir

cd ~
mkdir -p ycm_build
cd ycm_build
cmake -G "Unix Makefiles" . /home/paul/.vim/bundle/YouCompleteMe/third_party/ycmd/cpp
make ycm_support_libs
make
