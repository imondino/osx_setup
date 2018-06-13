
#Install Homebrew
#/usr/bin/ruby -e "$(curl -fsSL https://raw.githubusercontent.com/Homebrew/install/master/install)"

#Install Software
brew install ansible terraform packer awscli amazon-ecs-cli aws-elasticbeanstalk git

#Install cask sofware
brew cask install atom spotify virtualbox vagrant docker

#Install plugins
vagrant plugin install vagrant-hostsupdater
apm install multi-cursor script

#Set up repos
if [ ! -d "git" ]; then
  mkdir ~/git
fi

pushd ~/git

if [ ! -d "dotfiles" ]; then
  git clone https://github.com/imondino/osx_setup.git
fi

ln -sf git/dotfiles/.aliases ~
ln -sf git/dotfiles/.bash_profile ~
ln -sf git/dotfiles/.bash_prompt ~
ln -sf git/dotfiles/.bashrc ~
ln -sf git/dotfiles/.functions ~
ln -sf git/dotfiles/.gitconfig ~
ln -sf git/dotfiles/.vimrc ~
popd

if [ ! -f "com.apple.Terminal.plist" ]; then
  curl -fsSL https://raw.githubusercontent.com/Homebrew/install/master/install > ~/Library/Preferences/com.apple.Terminal.plist
else
  cp com.apple.Terminal.plist ~/Library/Preferences/com.apple.Terminal.plist
fi
