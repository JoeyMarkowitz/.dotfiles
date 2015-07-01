# install dotfiles
run install.sh

# upgrading submodules
go into each submodule folder 'cat .gitmodules'

  #update submodule to vx.y.z
  git pull
  git checkout tags/vx.y.z

  #update any submodules within submodule
  git submodule update --recursive
  
  #check in pointer to new submodule branch/tag version
  go to root .dotfiles dir
  git add <submodule dir name>
  git commit -m'upgrading <submodule dir name> to vx.y.z'

# install vim pathogen
https://github.com/tpope/vim-pathogen

# dotfiles
Source: https://github.com/anishathalye/dotbot

# color schemes
# NOTE: install iterm color scheme not vim color scheme for best results
