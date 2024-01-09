# If you come from bash you might have to change your $PATH.
# export PATH=$HOME/bin:/usr/local/bin:$PATH

# Path to your oh-my-zsh installation.
export ZSH="$HOME/.oh-my-zsh"

export SHELL=zsh

autoload -Uz promptinit
promptinit

# Prompt
# Prompt credits go to https://github.com/N3k0Ch4n/dotRice

precmd() { print "" }
PS1='%B%(?.%K{135}.%K{167}) %k %F{183}%4~ / %k%b%f '
PS2='%K{167} %K{235} -> %k '

# oh-my-zsh plugins
plugins=(zsh-autosuggestions git zsh-syntax-highlighting history-substring-search)

source $ZSH/oh-my-zsh.sh

alias ls="exa -A"
alias btop="btop --utf-force"
alias time="tty-clock -tC 5 #blue"
alias cmatrix='cmatrix -C blue'
alias num="ls -1 | wc -l"
alias sysdvr="cd ~/Downloads && flatpak run com.github.exelix11.sysdvr"
alias parrot="curl parrot.live"
alias weather="wego"
alias badapple="cd ~/Downloads/badapple/Bad-Apple-Terminal && npm start"
alias map="mapscii"
alias audio="pulsemixer"
alias neofetch="neofetch --ascii_colors 4 4 4 4 4 4 4 4"
alias timer="termdown"
alias ascii="figlet"
alias size="du -sh"
#pokemon-colorscripts -r
export PATH=$PATH:/home/ethan/.spicetify

#eval "$(starship init zsh)"

export ALPHAVANTAGE_API_KEY=OSQTH8ZOCOWD6ME4

[ -n "$DISPLAY" ]  && command -v xdo >/dev/null 2>&1 && xdo id > /tmp/term-wid-"$$"
trap "( rm -f /tmp/term-wid-"$$" )" EXIT HUP
