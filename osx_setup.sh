
#Install Homebrew
echo "Installing Homebrew"
echo ""
/usr/bin/ruby -e "$(curl -fsSL https://raw.githubusercontent.com/Homebrew/install/master/install)"

#Install Software
echo ""
echo "Installing software"
echo ""
brew install ansible terraform packer awscli amazon-ecs-cli aws-elasticbeanstalk git

echo ""
echo "Installing cask software"
echo
#Install cask sofware
brew cask install atom spotify virtualbox vagrant docker

echo ""
echo "Installing some plugins"
echo ""
#Install plugins
vagrant plugin install vagrant-hostsupdater
apm install multi-cursor script

#Set up repos
if [ ! -d ~/git ]; then
  mkdir ~/git
fi

echo ""
echo "Setting up env"
echo ""
#Install  bash osx_setup
# https://github.com/imondino/dotfiles

pushd ~/git > /dev/null

if [ ! -d "dotfiles" ]; then
  echo ""
  echo "Clonning dotfiles repo"
  echo ""
  git clone https://github.com/imondino/dotfiles.git
fi

ln -sf git/dotfiles/.aliases ~
ln -sf git/dotfiles/.bash_profile ~
ln -sf git/dotfiles/.bash_prompt ~
ln -sf git/dotfiles/.bashrc ~
ln -sf git/dotfiles/.functions ~
ln -sf git/dotfiles/.gitconfig ~
ln -sf git/dotfiles/.vimrc ~
popd > /dev/null

echo ""
echo "Complete! Remember to import the custom Solarized theme."
echo ""
