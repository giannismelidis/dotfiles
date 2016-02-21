export PS1="\\w\$(__git_ps1 '(%s)') \$ "
source ~/.git-prompt.sh

# pip should only run if there is a virtualenv currently activated
export PIP_REQUIRE_VIRTUALENV=true
# cache pip-installed packages to avoid re-downloading
export PIP_DOWNLOAD_CACHE=$HOME/.pip/cache

source /usr/local/share/chruby/chruby.sh
source /usr/local/share/chruby/auto.sh

# Setting up the VirtualEnv
export WORKON_HOME=$HOME/.virtualenvs
export VIRTUALENVWRAPPER_PYTHON=/usr/bin/python2.7
export VIRTUALENVWRAPPER_VIRTUALENV_ARGS='--no-site-packages'
export PIP_VIRTUALENV_BASE=$WORKON_HOME
export PIP_RESPECT_VIRTUALENV=true

source /usr/local/bin/virtualenvwrapper.sh

export EDITOR="mvim"
# for packages like imgcat
export PATH="/Users/$USER/go:$PATH"

alias be='bundle exec'
alias pg='pg_ctl -D /usr/local/var/postgres'
alias chrome='open -a "Google Chrome"'
