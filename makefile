pyenv:
	brew install pyenv
	pyenv init
	pyenv install 3.11.4
	pyenv shell 3.11.4

install:
	pip3 install robotframework
	pip3 install robotframework-seleniumlibrary
	pip3 install webdrivermanager

chrome:
	mkdir ~/bin
	webdrivermanager chrome --linkpath /usr/local/bin
	export PATH=$PATH:~/bin
