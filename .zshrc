# Enable Powerlevel10k instant prompt. Should stay close to the top of ~/.zshrc.
if [[ -r "${XDG_CACHE_HOME:-$HOME/.cache}/p10k-instant-prompt-${(%):-%n}.zsh" ]]; then
  source "${XDG_CACHE_HOME:-$HOME/.cache}/p10k-instant-prompt-${(%):-%n}.zsh"
fi

# Path to your oh-my-zsh installation.
export ZSH="$HOME/.oh-my-zsh"

# Theme is loaded manually below
ZSH_THEME=""

# Oh My Zsh plugins only.
# Powerlevel10k, autosuggestions and syntax-highlighting
plugins=(git web-search poetry)
source $ZSH/oh-my-zsh.sh

# ----- Powerlevel10k -----
source /opt/homebrew/share/powerlevel10k/powerlevel10k.zsh-theme

# To customize prompt, run `p10k configure` or edit ~/.p10k.zsh.
[[ ! -f ~/.p10k.zsh ]] || source ~/.p10k.zsh

# ----- User configuration -----

# For tkinter
export PATH="/usr/local/opt/tcl-tk/bin:$PATH"

# ----- History setup -----
HISTFILE=$HOME/.zhistory
SAVEHIST=1000
HISTSIZE=999

setopt share_history
setopt hist_expire_dups_first
setopt hist_ignore_dups
setopt hist_verify

# Completion using arrow keys based on history
bindkey '^[[A' history-search-backward
bindkey '^[[B' history-search-forward

# ----- Zsh plugins loaded manually -----
source $(brew --prefix)/share/zsh-autosuggestions/zsh-autosuggestions.zsh
source $(brew --prefix)/share/zsh-syntax-highlighting/zsh-syntax-highlighting.zsh

# ----- Eza better ls -----
alias ls="eza --icons=always"

# ----- Aliases -----
alias certs="cd ~/Library/Mobile\ Documents/com\~apple\~CloudDocs/certs/"

# ----- Docker CLI completions -----
fpath=(/Users/rpd/.docker/completions $fpath)
autoload -Uz compinit
compinit

# ----- Pyenv -----
export PYENV_ROOT="$HOME/.pyenv"
[[ -d $PYENV_ROOT/bin ]] && export PATH="$PYENV_ROOT/bin:$PATH"
eval "$(pyenv init - zsh)"

# ----- Local bin env -----
. "$HOME/.local/bin/env"
