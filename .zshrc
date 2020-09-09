# minimalism is everything

# path to my oh-my-zsh installation.
export ZSH="/home/koyu/.oh-my-zsh"

# theme
ZSH_THEME="spaceship"

# plugins
plugins=(
  git
  python
  thefuck
  dnf
)

# source oh-my-zsh
source $ZSH/oh-my-zsh.sh

# nano is the default editor
export EDITOR=nano

# aliases
alias cls="tput reset"
alias resource="source ~/.zshrc"

# nvm
export NVM_DIR="$([ -z "${XDG_CONFIG_HOME-}" ] && printf %s "${HOME}/.nvm" || printf %s "${XDG_CONFIG_HOME}/nvm")"
[ -s "$NVM_DIR/nvm.sh" ] && \. "$NVM_DIR/nvm.sh" # This loads nvm

# fpath
fpath=($fpath "/home/koyu/.zfunctions")

# PATH
export PATH=$PATH:/home/koyu/.local/bin/

# redefine _systemctl_unit_state, see https://github.com/ohmyzsh/ohmyzsh/issues/8751#issuecomment-602518773
_systemctl_unit_state() {
  typeset -gA _sys_unit_state
  _sys_unit_state=( $(__systemctl list-unit-files "$PREFIX*" | awk '{print $1, $2}') ) }
