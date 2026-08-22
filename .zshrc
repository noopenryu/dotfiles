
export ALIASES="$HOME/.zsh_alias"
source $ALIASES

export STARSHIP_CONFIG="$HOME/.config/starship.toml"

export SDKMAN_DIR="$HOME/.sdkman"
[[ -s "$HOME/.sdkman/bin/sdkman-init.sh" ]] && source "$HOME/.sdkman/bin/sdkman-init.sh"

export GOENV_ROOT="$HOME/.goenv"
export PATH="$GOENV_ROOT/bin:$PATH"
eval "$(goenv init -)"
export PATH="$(go env GOPATH)/bin:$PATH"
export PATH="$HOME/.local/bin:$PATH"

export NVM_DIR="$HOME/.nvm"

# Lazy load nvm - only initialise when first used
nvm() {
  unfunction nvm node npm npx
  [ -s "$NVM_DIR/nvm.sh" ] && \. "$NVM_DIR/nvm.sh"
  nvm "$@"
}
node() {
  unfunction nvm node npm npx
  [ -s "$NVM_DIR/nvm.sh" ] && \. "$NVM_DIR/nvm.sh"
  node "$@"
}
npm() {
  unfunction nvm node npm npx
  [ -s "$NVM_DIR/nvm.sh" ] && \. "$NVM_DIR/nvm.sh"
  npm "$@"
}
npx() {
  unfunction nvm node npm npx
  [ -s "$NVM_DIR/nvm.sh" ] && \. "$NVM_DIR/nvm.sh"
  npx "$@"
}

eval "$(starship init zsh)"
# Jujutsu
source <(COMPLETE=zsh jj)


export HISTSIZE=20000
export SAVEHIST=20000
export HISTFILE="$HOME/.zsh_history"

setopt INC_APPEND_HISTORY
setopt SHARE_HISTORY
setopt HIST_IGNORE_DUPS
setopt HIST_IGNORE_ALL_DUPS
setopt HIST_IGNORE_SPACE
setopt HIST_REDUCE_BLANKS
setopt HIST_EXPIRE_DUPS_FIRST

export LS_COLORS=$LS_COLORS:"di=1;35:"


source ~/.zsh/zsh-autosuggestions/zsh-autosuggestions.zsh
source ~/.zsh/zsh-syntax-highlighting/zsh-syntax-highlighting.zsh


# opencode
export PATH=/home/space/.opencode/bin:$PATH
