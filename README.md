# zshrc
My zsh config working with putty and windows

## Installation 

### Linux

`cd && git clone https://github.com/s-weigand/dotzshrc.git && sudo bash dotzshrc/install.sh`

open new shell and all should be done :)

(If not, run `chsh -s /bin/zsh $username` and try again)

To update the settings simply run (for this to work it is assumed that you did run the git clone when you where in the home folder) 

`~/dotzshrc/update.sh` 

If you had `powerlevel9k` installed you should also run `antigen cleanup` after updating.
This config changed from [`powerlevel9k`](https://github.com/Powerlevel9k/powerlevel9k) to [`powerlevel10k`](https://github.com/romkatv/powerlevel10k),
which are'n compatible.

### Windows (putty)

execute `putty_zsh_reg.reg` to set colors for putty

Install the Font [`MesloLGS NF`](https://github.com/romkatv/powerlevel10k#meslo-nerd-font-patched-for-powerlevel10k) 
(run `download_fonts.sh` and install the fonts in the `MesloLGS_NF` folder)

in putty you might need to change the font again (`Change Settings...->Category->Window->Appearance->Change...`)

and save it in `Default Settings` (`Change Settings...->Category->Session`)
