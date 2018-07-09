export TERM="xterm-256color"

# use anacobnda if installed
ANACONDA_BIN_DIR=~/anaconda3/bin
if [ -d "$ANACONDA_BIN_DIR" ]; then
  export PATH="$ANACONDA_BIN_DIR:$PATH"
fi
source ~/.rcs/.zsh_packages
source ~/.rcs/.powerline9k_style
source ~/.rcs/.custom_aliases

