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

HISTFILE="$HOME/.zsh_history"
HISTSIZE=1000
SAVEHIST=1000
setopt BANG_HIST                 # Treat the '!' character specially during expansion.
setopt INC_APPEND_HISTORY        # Write to the history file immediately, not when the shell exits.
setopt SHARE_HISTORY             # Share history between all sessions.
setopt HIST_EXPIRE_DUPS_FIRST    # Expire duplicate entries first when trimming history.
setopt HIST_IGNORE_DUPS          # Don't record an entry that was just recorded again.
setopt HIST_IGNORE_ALL_DUPS      # Delete old recorded entry if new entry is a duplicate.
setopt HIST_FIND_NO_DUPS         # Do not display a line previously found.
setopt HIST_IGNORE_SPACE         # Don't record an entry starting with a space.
setopt HIST_SAVE_NO_DUPS         # Don't write duplicate entries in the history file.
setopt HIST_REDUCE_BLANKS        # Remove superfluous blanks before recording entry.
setopt HIST_VERIFY               # Don't execute immediately upon history expansion.

# always source plugins at the end of the file.
source /usr/share/zsh/plugins/zsh-you-should-use/you-should-use.plugin.zsh

# always source these two plugins at the very end of the file, else they might not work properly
source /home/lanhildy/.zsh/plugins/zsh-syntax-highlighting/zsh-syntax-highlighting.zsh
source /home/lanhildy/.zsh/zsh-autosuggestions/zsh-autosuggestions.zsh
alias config='/usr/bin/git --git-dir=/home/lanhildy/.cfg/ --work-tree=/home/lanhildy'
