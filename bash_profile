alias hdjs='heroku run python manage.py shell_plus'
alias hdjmp='heroku run python manage.py'
alias djs='manage.py shell_plus'
alias heroku_pg_reset='heroku pg:reset DATABASE_URL'

echo "enabling vim mode"
set -o vi

if [ -f /opt/boxen/env.sh ]; then
    echo "enabling boxen environment"
    source /opt/boxen/env.sh
fi

if [ -f $(brew --prefix)/etc/bash_completion ]; then
    echo "enabling bash completion"
    source $(brew --prefix)/etc/bash_completion
fi

if [ -f $HOME/.django_bash_completion ]; then
    echo "enabling django bash completion"
    source /Users/bryans/.django_bash_completion
fi

if [ -f /opt/boxen/homebrew/share/python/virtualenvwrapper.sh ]; then
    echo "enabling virtualenvwrapper"
    export VIRTUALENVWRAPPER_PYTHON='/opt/boxen/homebrew/bin/python2.7'
    source /opt/boxen/homebrew/share/python/virtualenvwrapper.sh
fi

if [ -f .tokens ]; then
    echo "enabling api tokens"
    source .tokens
fi

echo "all set"

PS1="\[$(tput bold)\]\[$(tput setaf 1)\]∴  \[$(tput setaf 3)\]\u\[$(tput setaf 2)\]@\[$(tput setaf 4)\]\h \[$(tput setaf 5)\] \w\[$(tput setaf 6)\]\[\$(__git_ps1) \]\[$(tput setaf 7)\]\[$(tput setaf 1)\]∴  \[$(tput sgr0)\]"
