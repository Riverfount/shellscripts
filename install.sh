#!/bin/bash

# Instalação de apps básicas

# Instação do ZSH e do OH-MY-ZSH
apt install zsh
sh -c "$(wget https://raw.githubusercontent.com/robbyrussell/oh-my-zsh/master/tools/install.sh -O -)"

# Instalação do VIM
apt install vim

# Instalação do Git
apt install git

# Instalação dos ambientes para Python, via Pyenv
apt install -y make build-essential libssl-dev zlib1g-dev libbz2-dev libreadline-dev libsqlite3-dev wget curl llvm libncurses5-dev libncursesw5-dev
curl -L https://raw.githubusercontent.com/pyenv/pyenv-installer/master/bin/pyenv-installer | bash
git clone https://github.com/yyuu/pyenv-virtualenvwrapper.git ~/.pyenv/plugins/pyenv-virtualenvwrapper

mkdir ~/.envs
mkdir ~/Documentos/pythonproject

echo export PATH="/home/vicente/.pyenv/bin:$PATH" >> .zshrc
source .zshrc

echo export WORKON_HOME=~/.envs > .zshenv
echo export PROJECT_HOME=~/Documentos/pythonprojects >> .zshenv
echo eval "$(pyenv init -)" >> .zshenv

source .zshrc

pyenv install 3.6.2
pyenv install 2.7.13

pyenv virtualenv 3.6.2 jupyter3
pyenv virtualenv 3.6.2 tools3
pyenv virtualenv 2.7.13 ipython2
pyenv virtualenv 2.7.13 tools2

pyenv activate jupyter3
pip install jupyter
python -m ipykernel install --user
pyenv deactivate

pyenv activate tools3
pip install youtube-dl gnucash-to-beancount rows 
pyenv deactivate 

pyenv activate tools2
pip install rename s3cmd fabric mercurial
pyenv deactivate

pyenv global 3.6.2 2.7.13 jupyter3 ipython2 tools3 tools2

echo pyenv virtualenvwrapper_lazy >> .zshenv

source .zshrc

ipython profile create
curl -L http://hbn.link/hb-ipython-startup-script > ~/.ipython/profile_default/startup/00-venv-sitepackages.py


