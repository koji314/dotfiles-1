#
[[ $- != *i* ]] && return

export PATH=$HOME/.local/bin:$HOME/bin:$PATH:$HOME/.cargo/bin
export PATH=$PATH:$HOME/.npm-global/bin
export PATH=$PATH:$HOME/.gem/ruby/2.5.0/bin
export PATH=$PATH:/var/lib/snapd/snap/bin/
export EDITOR='vim'
export GOPATH=$HOME/go
export PATH=$PATH:GOROOT/bin:$GOPATH/bin
export PATH=$PATH:$HOME/.npm-global/bin

setopt AUTO_CD # No cd needed to change directories
setopt BANG_HIST # Treat the '!' character specially during expansion.
setopt EXTENDED_HISTORY
setopt HIST_EXPIRE_DUPS_FIRST # Expire duplicate entries first when trimming history.
setopt HIST_FIND_NO_DUPS
setopt HIST_IGNORE_ALL_DUPS # Delete old recorded entry if new entry is a duplicate.
setopt HIST_IGNORE_DUPS # Don't record an entry that was just recorded again.
setopt HIST_IGNORE_SPACE # Don't record an entry starting with a space.
setopt HIST_REDUCE_BLANKS # Remove superfluous blanks before recording entry.
setopt HIST_SAVE_NO_DUPS # Don't write duplicate entries in the history file.
setopt INC_APPEND_HISTORY # Write to the history file immediately, not when the shell exits.
setopt SHARE_HISTORY # Share history between all sessions.

PS1='[\u@\h \W]\$ '

alias ls='ls --color=auto'
alias la='ls -A'
alias ll='ls -lA'
alias l='ls -l'
alias l.="ls -A | egrep '^\.'"
alias merge='xrdb -merge ~/.Xresources'
alias pmsyu='sudo pacman -Syu --color=auto'
alias update='sudo pacman -Syu'
alias mirrors='sudo reflector --score 100 --fastest 25 --sort rate --save /etc/pacman.d/mirrorlist --verbose'
# Vim ruined me...
alias :q='exit'
alias gdb='gdb -q'
alias ytmp3='youtube-dl --extract-audio --audio-format mp3 --audio-quality 0 '
if which nvim 2>&1 1>/dev/null; then
    alias vim=nvim
fi

function note {
    vim ~/notes/$1
}

[ -f ~/.fzf.zsh ] && source ~/.fzf.zsh

export NVM_DIR="$HOME/.nvm"
[ -s "$NVM_DIR/nvm.sh" ] && \. "$NVM_DIR/nvm.sh"  # This loads nvm
[ -s "$NVM_DIR/bash_completion" ] && \. "$NVM_DIR/bash_completion"  # This loads nvm bash_completion

export PATH="$HOME/.yarn/bin:$HOME/.config/yarn/global/node_modules/.bin:$PATH"
