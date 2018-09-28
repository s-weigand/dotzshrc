# zshrc
My zsh config working with putty and windows

## Installation 

### Linux

`git clone https://github.com/s-weigand/dotzshrc.git && cd && sudo bash dotzshrc/install.sh`

open new shell and all should be done :)

(If not, run `chsh -s /bin/zsh $username` and try again)

The `.rcs` folder contains a working copy of antigen (https://github.com/zsh-users/antigen)

To update the settings simply run (for this to work it is assumed that you did run the git clone when you where in the home folder) 

`~/dotzshrc/update.sh` 

### Windows (putty)

execute `putty_zsh_reg.reg` to set colors for putty

install the Font `SourceCodePro` (taken from this awesome project https://github.com/powerline/fonts)

in putty you might need to change the font again (`Change Settings...->Category->Window->Appearance->Change...`)

and save it in `Default Settings` (`Change Settings...->Category->Session`)
