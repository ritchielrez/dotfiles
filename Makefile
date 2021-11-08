NEOVIM_DIR := "/tmp/neovim"

.ONESHELL:
SHELL := /bin/bash

ubuntu_install:
	sudo apt install software-properties-common curl wget unzip stow git figlet ruby -y
	curl -fsSL https://cli.github.com/packages/githubcli-archive-keyring.gpg | sudo gpg --dearmor -o /usr/share/keyrings/githubcli-archive-keyring.gpg
	echo "deb [arch=amd64 signed-by=/usr/share/keyrings/githubcli-archive-keyring.gpg] https://cli.github.com/packages stable main" | sudo tee /etc/apt/sources.list.d/github-cli.list > /dev/null
	sudo apt update
	sudo apt install gh -y

	sudo gem install lolcat

	figlet -c "Installed all the ubuntu packages" | lolcat

	make ubuntu_compile_apps
	
ubuntu_compile_apps:
	if [ -d $(NEOVIM_DIR) ]
	then
		git clone https://github.com/neovim/neovim/ --depth 1 /tmp/neovim 
	fi
	figlet -c "Neovim cloned" | lolcat

	sudo apt-get install ninja-build gettext libtool libtool-bin autoconf automake cmake g++ pkg-config unzip curl doxygen -y
	figlet -c "Neovim deps installed" | lolcat

	if [ -v /usr/local/bin/nvim ] 
	then
		echo "nvim installed"
	fi
	#cd /tmp/neovim && make -j4	
	#sudo make install
	figlet -c "Neovim compiled and installed" | lolcat

	git clone --depth 1 https://github.com/wbthomason/packer.nvim\
 ~/.local/share/nvim/site/pack/packer/start/packer.nvim
	figlet -c "Installed packer.nvim" | lolcat



	
