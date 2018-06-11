
#Install Homebrew
/usr/bin/ruby -e "$(curl -fsSL https://raw.githubusercontent.com/Homebrew/install/master/install)"

#Install Software
brew install ansible terraform packer awscli amazon-ecs-cli aws-elasticbeanstalk git

#Install cask sofware
brew cask install atom spotify virtualbox vagrant

#Install plugins
vagrant plugin install vagrant-hostsupdater
apm install multi-curior script

#Set up repos
if [ ! -d "git" ]; then
  mkdir ~/git
fi

pushd git

if [ ! -d "dotfiles" ]; then
  git clone git@github.com:imondino/dotfiles.git
fi

ln -sf git/dotfiles/.aliases ~
ln -sf git/dotfiles/.bash_profile ~
ln -sf git/dotfiles/.bash_prompt ~
ln -sf git/dotfiles/.bashrc ~
ln -sf git/dotfiles/.functions ~
ln -sf git/dotfiles/.gitconfig ~
ln -sf git/dotfiles/.vimrc ~
popd
