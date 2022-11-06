#! /bin/bash

echo "Installing brew packages..."

#before this runs install homebrew and rosetta2

PACKAGES=(
	git
	htop
	gh
	lsd
	make
	romkatv/powerlevel10k/powerlevel10k
	tldr
	tmux
	fzf
)

echo "Installing packages..."
brew install ${PACKAGES[@]}

echo "Cleaning up..."
brew cleanup

CASKS=(
	iterm2
	docker
	xquartz
	alfred
	zoom
	todoist
	sublime-text
	spotify
	rstudio
	papers
	1password
	grammarly
	appcleaner
)


echo "Installing cask apps..."
brew install --cask ${CASKS[@]}


echo "Installing zsh tools"
sh -c "$(curl -fsSL https://raw.github.com/ohmyzsh/ohmyzsh/master/tools/install.sh)"



#disable "natural" scroll
defaults write NSGlobalDomain com.apple.swipescrolldirection -bool false

#faster dock hiding
defaults write com.apple.dock autohide-delay -float 0; defaults write com.apple.dock autohide-time-modifier -int 0;killall Dock


#still need to install by hand
	#--R :)
	#--miniconda :)
	#--pdf expert :)
	#--microsoft office :)
	#--xcode :)
	#--zsh_sysntax_highlighting :)
	#--zsh_autosuggestions :) 
	#--better snap tool :)
	#--backblaze :)
	#-- rize :)

#set_app :)
#	bartender
#	clean shot x
#	expressions
#	mindnode
#	clean my mac
#	istat menu


echo "Brew cleanup"

brew cleanup 

echo "Brew upgrade"
brew upgrade && update


echo "Complete :)"




