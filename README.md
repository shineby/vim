# VimPlug
curl -fLo ~/.vim/autoload/plug.vim --create-dirs https://raw.githubusercontent.com/junegunn/vim-plug/master/plug.vim
:PlugInstall

# COC
https://github.com/neoclide/coc.nvim/wiki/Language-servers

# nodejs for COC
저장소 추가

curl -sL https://deb.nodesource.com/setup_8.x | sudo -E bash -

sudo apt-get update

// nodejs 및 빌드도구 설치하기

sudo apt-get install -y nodejs build-essential

node -v
v8.9.4

# ripgrep
sudo add-apt-repository ppa:x4121/ripgrep
sudo apt-get update
