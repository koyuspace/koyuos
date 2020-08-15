# minimalism is everything

# path to my oh-my-zsh installation.
export ZSH="/home/koyu/.oh-my-zsh"

# theme
ZSH_THEME="spaceship"

# plugins
plugins=(
  git
  python
  archlinux
)

# source oh-my-zsh
source $ZSH/oh-my-zsh.sh

# vim is the default editor
export EDITOR=vim

# aliases
alias cls="tput reset"
alias resource="source ~/.zshrc"

# nvm
source /usr/share/nvm/init-nvm.sh

# fpath
fpath=($fpath "/home/koyu/.zfunctions")

# redefine _systemctl_unit_state, see https://github.com/ohmyzsh/ohmyzsh/issues/8751#issuecomment-602518773
_systemctl_unit_state() {
  typeset -gA _sys_unit_state
  _sys_unit_state=( $(__systemctl list-unit-files "$PREFIX*" | awk '{print $1, $2}') ) }
