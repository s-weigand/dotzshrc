export TERM="xterm-256color"

# use anacondas python if installed
ANACONDA_BIN_DIR=~/miniconda3/bin
if [ -d "$ANACONDA_BIN_DIR" ]; then
  export PATH="$ANACONDA_BIN_DIR:$PATH"
  export CONDA_ROOT_DIR=~/anaconda3
fi
ANACONDA_BIN_DIR=~/anaconda3/bin
if [ -d "$ANACONDA_BIN_DIR" ]; then
  export PATH="$ANACONDA_BIN_DIR:$PATH"
  export CONDA_ROOT_DIR=~/anaconda3
fi
# use berrycondas python if installed (Raspberry Pi)
BERRYCONDA_BIN_DIR=~/berryconda3/bin
if [ -d "$BERRYCONDA_BIN_DIR" ]; then
  export PATH="$BERRYCONDA_BIN_DIR:$PATH"
  export CONDA_ROOT_DIR=~/berryconda3
fi
source ~/.rcs/.zsh_packages
source ~/.rcs/.powerline9k_style
source ~/.rcs/.custom_aliases

export NVM_DIR="$HOME/.nvm"
[ -s "$NVM_DIR/nvm.sh" ] && \. "$NVM_DIR/nvm.sh"  # This loads nvm
[ -s "$NVM_DIR/bash_completion" ] && \. "$NVM_DIR/bash_completion"  # This loads nvm bash_completion
