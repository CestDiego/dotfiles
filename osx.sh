xcode-select --install

/usr/bin/ruby -e "$(curl -fsSL https://raw.githubusercontent.com/Homebrew/install/master/install)"
brew bundle

cd ~
git clone git@github.com:CestDiego/dotfiles.git
ln -s ~/dotfiles/.chunkwmrc ~/.chunkwmrc
ln -s ~/dotfiles/.khdrc ~/.khdrc
ln -s ~/dotfiles/.profile ~/.profile
ln -s ~/dotfiles/.zprofile ~/.zprofile
ln -s ~/dotfiles/.zshrc ~/.zshrc
ln -s ~/dotfiles/.alias ~/.alias
ln -s ~/dotfiles/.ideavimrc ~/.ideavimrc
ln -s ~/dotfiles/.hammerspoon ~/.hammerspoon
ln -s ~/dotfiles/bin/ ~/bin/

sh -c "$(curl -fsSL https://raw.githubusercontent.com/robbyrussell/oh-my-zsh/master/tools/install.sh)"

curl -o- https://raw.githubusercontent.com/creationix/nvm/master/install.sh | bash

brew linkapps emacs-plus
git clone git@github.com:CestDiego/spacemacs_conf.git ~/.spacemacs.d
rm -rf ~/.emacs.d
git clone git@github.com:syl20bnr/spacemacs ~/.emacs.d
# Disable nap mode for Emacs, otherwise requests will be very slow when Emacs enters nap mode:
defaults write org.gnu.Emacs NSAppSleepDisabled -bool YES
