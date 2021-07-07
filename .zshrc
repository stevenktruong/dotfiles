# added by Anaconda3 5.1.0 installer
export PATH="/usr/local/bin:$PATH"
export PATH="/anaconda3/bin:$PATH"
export PATH="/usr/local/opt/coreutils/libexec/gnubin:$PATH"
export PATH="/usr/local/Cellar/nmap/7.70/bin:$PATH"
export PATH="/usr/local/texlive/2019/bin/x86_64-darwin:$PATH"

export NVM_DIR="$HOME/.nvm"
[ -s "$NVM_DIR/nvm.sh" ] && \. "$NVM_DIR/nvm.sh"  # This loads nvm
[ -s "$NVM_DIR/bash_completion" ] && \. "$NVM_DIR/bash_completion"  # This loads nvm bash_completion

# aliases
alias ls='ls -G'
alias ll='ls -l'
alias lla='ll -a'

# PROMPT
export PROMPT="%D{%b %d %I:%M%p} %F{cyan}%n%f@%F{magenta}%M %f[%~]
%% "

# M-DEL behaves like emacs
backward-kill-dir() {
    local WORDCHARS=${WORDCHARS/\/}
    zle backward-kill-word
}
zle -N backward-kill-dir
bindkey '^[^?' backward-kill-dir

# added by travis gem
[ ! -s /Users/Steven/.travis/travis.sh ] || source /Users/Steven/.travis/travis.sh
