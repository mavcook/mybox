#
# ~/.bashrc
#

# If not running interactively, don't do anything
[[ $- != *i* ]] && return


# Alias ################################
alias ls='ls --color=auto'
alias paci='sudo pacman -S' # install package
alias pacr='sudo pacman -Rs' # remove package
alias starthost='sudo systemctl start httpd'
alias stophost='sudo systemctl stop httpd'
alias startsql='sudo systemctl start mysqld'
alias stopsql='sudo systemctl stop mysqld'
alias ssh-caen='ssh mavcook@login-course.engin.umich.edu'
alias ssh-code-m='ssh mavcook@code-m.eecs.umich.edu'
alias forget='less ~/.forgets'


#PS1 ##################################
source ~/git-prompt.sh
PROMPT_COMMAND=__prompt_command # Func to gen PS1 after CMDs

__prompt_command() {
	local EXIT="$?"             # This needs to be first
	PS1=""

	local RCol='\[\e[0m\]'
	LBLUE='\[\033[0;34m\]'
	LGREEN='\[\033[0;32m\]'
	LWHITE='\[\033[0;37m\]'
	local Red='\[\e[0;31m\]'
	local orange='\[\e[0;33m\]'

	user="\u@\h"
	# Change user to virtual env -- thanks to Aaron Schumacher
	if [ ${VIRTUAL_ENV+x} ]
		then
			user="(VENV: $(basename "$VIRTUAL_ENV"))"
	fi

	PS1="${RCol}\n[$LGREEN${user} $LBLUE\w$RCol]"

	# add exit code of previous command
	if [ $EXIT != 0 ]; then
		PS1+="${Red}[$EXIT]${RCol}"      # Add red if exit code non 0
	else
		PS1+="[0]"
	fi

	# add git branch
	PS1+="${orange}$(__git_ps1 '(%s)')${RCol}\n  "
}


# don't overwrite files with output redirect
# use >| to force (when clobber is set)
# turn off: $ set +o noclobber
# turn on: $ set -o noclobber