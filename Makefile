.ONESHELL:
SHELL := /bin/bash

ubuntu_install:
	sudo apt install software-properties-common curl wget unzip stow git figlet ruby -y

	curl -fsSL https://cli.github.com/packages/githubcli-archive-keyring.gpg | sudo gpg --dearmor -o /usr/share/keyrings/githubcli-archive-keyring.gpg
	echo "deb [arch=amd64 signed-by=/usr/share/keyrings/githubcli-archive-keyring.gpg] https://cli.github.com/packages stable main" | sudo tee /etc/apt/sources.list.d/github-cli.list > /dev/null
	sudo apt update
	sudo apt install gh -y

	sudo apt install bspwm -y
	sudo apt autoremove lemonbar -y

	sudo add-apt-repository -y ppa:kgilmer/speed-ricer -y
	sudo apt update 
	sudo apt install polybar -y

	sudo add-apt-repository ppa:aslatter/ppa -y
	sudo apt update
	sudo apt install alacritty -y

	sudo gem install lolcat

	figlet -c "Installed all the ubuntu packages" | lolcat

	make ubuntu_compile_apps
	
ubuntu_compile_apps:
	if [ ! -d "~/repos/neovim" ]
	then
		git clone https://github.com/neovim/neovim/ --depth 1 ~/repos/neovim 
	fi
	figlet -c "Neovim cloned" | lolcat

	sudo apt-get install ninja-build gettext libtool libtool-bin autoconf automake cmake g++ pkg-config unzip curl doxygen -y
	figlet -c "Neovim deps installed" | lolcat

	if [ -v /usr/local/bin/nvim ] 
	then
		cd $HOME/repos/neovim && make -j4	
		sudo make install
	fi
	figlet -c "Neovim compiled and installed" | lolcat
	
	if [ ! -d "~/.local/share/nvim/site/pack/packer/start/packer" ]
	then
		git clone --depth 1 https://github.com/wbthomason/packer.nvim ~/.local/share/nvim/site/pack/packer/start/packer.nvim
	fi
	figlet -c "Installed packer.nvim" | lolcat



app_init: 
	gh auth login

	if [ -d "~/.oh-my-bash" ]
	then
		wget https://raw.github.com/ohmybash/oh-my-bash/master/tools/install.sh
		chmod a+x install.sh
		./install.sh
		rm install.sh
	fi

	if [ ! -d "~/.config/polybar" ]	
	then
		stow -vSt ~ polybar-minimal
	fi

	if [ ! -d "~/.config/bspwm/" ]	
	then
		stow -vSt ~ bspwm
	fi

	if [ ! -d "~/.config/sxhkd" ]	
	then
		stow -vSt ~ sxhkd
	fi

	if [ ! -d "~/.config/alacritty" ]	
	then
		stow -vSt ~ alacritty
	fi

test_app_init:
	if [ ! -d "~/.config/sway" ]
	then
		stow -vSt ~ sway
	fi
