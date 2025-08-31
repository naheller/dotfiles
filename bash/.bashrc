#
# .bashrc
#

# Source global definitions
if [ -f /etc/bashrc ]; then
	. /etc/bashrc
fi

# User specific environment
if ! [[ "$PATH" =~ "$HOME/.local/bin:$HOME/bin:" ]]; then
	PATH="$HOME/.local/bin:$HOME/bin:$PATH"
fi
export PATH

# Aliases
alias ls='ls --color=auto'
alias grep='grep --color=auto'
alias o='xdg-open'
alias te='toolbox enter'
alias servs='systemctl --type=service --state=running'

# Open toolbox container
#echo 'Entering toolbox...'
#exec toolbox enter
