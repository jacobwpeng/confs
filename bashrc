# .bashrc

# Source global definitions
if [ -f /etc/bashrc ]; then
	. /etc/bashrc
fi

# User specific aliases and functions
alias vi='vim'
alias tmux='tmux -2'
alias tmuxat='tmux at -t'
alias pip='pip-python'
alias dstat='dstat -cdlmnpsy'
