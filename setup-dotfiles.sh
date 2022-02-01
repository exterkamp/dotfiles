##############################################################################################################
### install of common things
###

# sexy git diffs
npm install -g diff-so-fancy

###
##############################################################################################################


if ! [ -x "$(command -v brew)" ]; then
  mkdir $HOME/homebrew && curl -L https://github.com/Homebrew/brew/tarball/master | tar xz --strip 1 -C $HOME/homebrew
  export PATH=$HOME/homebrew/bin:$HOME/homebrew/sbin:$PATH
fi

./brew.sh

##############################################################################################################
### symlinks to link dotfiles into ~/
###

#   move git credentials into ~/.gitconfig.local    	http://stackoverflow.com/a/13615531/89484
#   now .gitconfig can be shared across all machines and only the .local changes

# symlink it up!
./symlink-setup.sh

# add manual symlink for .ssh/config and probably .config/fish

###
##############################################################################################################
