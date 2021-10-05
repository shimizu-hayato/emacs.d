# Created by `userpath` on 2021-01-10 04:16:29

#if [ -f ~/.bashrc ]; then
#    . ~/.bashrc
#fi

export PS1="\[\033[01;34m\]\W\[\033[00m\] $ "

# node nvm
export NVM_DIR="$HOME/.nvm"
[ -s "$NVM_DIR/nvm.sh" ] && . "$NVM_DIR/nvm.sh"

#python pyenv
export PYENV_ROOT="$HOME/.pyenv"
export PATH="$PYENV_ROOT/bin:$PATH"
if command -v pyenv 1>/dev/null 2>&1; then
  eval "$(pyenv init --path)"
  eval "$(pyenv init -)"
fi

# pipx
export PATH="$HOME/.local/bin:$PATH"

# poetry
export PATH="$HOME/.poetry/bin:$PATH"
