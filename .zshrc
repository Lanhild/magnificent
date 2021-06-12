# List the files after a successful directory change
function chpwd() {
    emulate -L zsh
    # uses ptSh for better-looking stdout
    # You can put any argument you'd like for a different output
    ptls && ptpwd
}

# change into the just created dir
# function named with builtin mkdir because of ptSh
mkdir () {
    # uses ptSh for better-looking stdout
    ptmkdir -p "$@" && cd "$@"
}

alias ls="ptls"
alias pwd="ptpwd"
alias mkdir="ptmkdir"
alias touch="pttouch"
alias cp="ptcp"
alias rm="ptrm"

# starship prompt $HOME/.config/starship.toml
eval "$(starship init zsh)"
neofetch

# always source plugins at the end of the file.
source /usr/share/zsh/plugins/zsh-you-should-use/you-should-use.plugin.zsh

# always source these two plugins at the very end of the file, else they might not work properly
source /home/lanhildy/.zsh/plugins/zsh-syntax-highlighting/zsh-syntax-highlighting.zsh
source /home/lanhildy/.zsh/zsh-autosuggestions/zsh-autosuggestions.zsh
alias config='/usr/bin/git --git-dir=/home/lanhildy/.cfg/ --work-tree=/home/lanhildy'
