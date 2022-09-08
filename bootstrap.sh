# run with:  
#   curl https://raw.githubusercontent.com/jonasleft/dotfiles/master/bootstrap.sh | bash

sudo apt install git
git clone --recursive https://github.com/jonasleft/dotfiles.git $HOME/dotfiles
cd $HOME/dotfiles
./setup_dotfiles.sh

