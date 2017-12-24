# zshrc
My zsh config working with putty and windows

## Installation 

### Linux

`git clone https://github.com/s-weigand/dotzshrc.git && sudo bash dotzshrc/install.sh`

open new shell and all should be done :)

(If not, run `chsh -s /bin/zsh $username` and try again)

The `.rcs` folder contains a working copy of antigen (https://github.com/zsh-users/antigen)

### Windows (putty)

execute `putty_zsh_reg.reg` to set colors for putty

install the Font `SourceCodePro` (taken from this awesome project https://github.com/powerline/fonts)

in putty you might need to change the font again (`Change Settings...->Category->Window->Appearance->Change...`)

and save it in `Default Settings` (`Change Settings...->Category->Session`)
