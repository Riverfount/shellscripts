#!/bin/bash

mkdir ~/.envs
mkdir ~/Documentos/pythonproject

echo export PATH="/home/vicente/.pyenv/bin:$PATH" >> ~/.zshrc
source ~/.zshrc

echo export WORKON_HOME=~/.envs > ~/.zshenv
echo export PROJECT_HOME=~/Documentos/pythonprojects >> ~/.zshenv
echo eval "$(pyenv init -)" >> ~/.zshenv

source ~/.zshrc

pyenv install 3.6.2
pyenv install 2.7.13

source .zshrc

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

echo pyenv virtualenvwrapper_lazy >> ~/.zshenv

source ~/.zshrc

ipython profile create
curl -L http://hbn.link/hb-ipython-startup-script > ~/.ipython/profile_default/startup/00-venv-sitepackages.py


