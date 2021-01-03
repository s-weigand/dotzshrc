export TERM="xterm-256color"

function add_conda_env_dir(){
  conda_root_dir=`dirname $1`
  conda_env_dir="$conda_root_dir/envs"
  if [ -d "$conda_env_dir" ] ; then
    if [ "$(ls -A $conda_env_dir)" ]; then
      export CONDA_ROOT_DIR="$conda_root_dir"
    fi
  elif [ -d ~/.conda/envs ];then
    export CONDA_ROOT_DIR=~/.conda
  fi

}

function add_conda_dirs(){
  conda_bin_dir="$1"
  if [[ -d "$conda_bin_dir" && ! :$PATH: == *:"$conda_bin_dir":* ]]; then
      export PATH="$conda_bin_dir:$PATH"
  fi
  add_conda_env_dir $conda_bin_dir
}

# use minicondas python if installed
add_conda_dirs ~/miniconda3/bin

# use anacondas python if installed
add_conda_dirs ~/anaconda3/bin

# use berrycondas python if installed (Raspberry Pi)
add_conda_dirs ~/berryconda3/bin

source ~/.rcs/.zsh_packages
source ~/.rcs/.powerline9k_style
source ~/.rcs/.custom_aliases

export NVM_DIR="$HOME/.nvm"
[ -s "$NVM_DIR/nvm.sh" ] && \. "$NVM_DIR/nvm.sh"  # This loads nvm
[ -s "$NVM_DIR/bash_completion" ] && \. "$NVM_DIR/bash_completion"  # This loads nvm bash_completion
