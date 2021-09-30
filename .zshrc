# Enable Powerlevel10k instant prompt. Should stay close to the top of ~/.zshrc.
# Initialization code that may require console input (password prompts, [y/n]
# confirmations, etc.) must go above this block; everything else may go below.
if [[ -r "${XDG_CACHE_HOME:-$HOME/.cache}/p10k-instant-prompt-${(%):-%n}.zsh" ]]; then
  source "${XDG_CACHE_HOME:-$HOME/.cache}/p10k-instant-prompt-${(%):-%n}.zsh"
fi

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
source ~/.rcs/.custom_aliases

export NVM_DIR="$HOME/.nvm"
[ -s "$NVM_DIR/nvm.sh" ] && \. "$NVM_DIR/nvm.sh"  # This loads nvm
[ -s "$NVM_DIR/bash_completion" ] && \. "$NVM_DIR/bash_completion"  # This loads nvm bash_completion

# To customize prompt, run `p10k configure` or edit ~/.p10k.zsh.
[[ ! -f ~/.rcs/.p10k.zsh ]] || source ~/.rcs/.p10k.zsh
