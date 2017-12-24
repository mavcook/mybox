alias starthost='sudo systemctl start httpd'
alias stophost='sudo systemctl stop httpd'
alias startsql='sudo systemctl start mysqld'
alias stopsql='sudo systemctl stop mysqld'
alias ssh-caen='ssh mavcook@login-course.engin.umich.edu'
alias forget='less ~/.forgets'
alias top5='watch "ps aux | sort -nrk 3,3 | head -n 5"'
alias apti='sudo apt-get install'


# Thanks to @jessfraz: https://github.com/jessfraz/dotfiles

# untar
alias untar='tar xvf'

# Pipe my public key to my clipboard.
#alias pubkey="more ~/.ssh/id_ed25519.pub | xclip -selection clipboard | echo '=> Public key copied to pasteboard.'"
# Pipe my private key to my clipboard.
#alias prikey="more ~/.ssh/id_ed25519 | xclip -selection clipboard | echo '=> Private key copied to pasteboard.'"

# Lock the screen (when going AFK)
alias afk="i3lock -c 000000"

# Stopwatch
alias timer='echo "Timer started. Stop with Ctrl-D." && date && time cat && date'
