zstyle ':completion:*' matcher-list 'l:|=* r:|=*' 
zstyle ':completion:*' list-colors ${(s.:.)LS_COLORS}
setopt autocd

HISTSIZE=5000               #How many lines of history to keep in memory
HISTFILE=~/.zhistory     #Where to save history to disk
SAVEHIST=5000               #Number of history entries to save to disk
HISTDUP=erase               #Erase duplicates in the history file
setopt    appendhistory     #Append history to the history file (no overwriting)
setopt    sharehistory      #Share history across terminals
setopt    incappendhistory  #Immediately append to the history file, not just when a term is killed

fpath=($fpath)
autoload -U compinit
compinit

# colorscript -r

alias ls='ls --color=auto'
alias l='ls -l'
alias ll='ls -la'
alias la='ls -a'

alias c='clear'

alias e='exit'

alias p='sudo pacman'
alias y='yay'

alias g='pass -c'

alias glola="git log --graph --pretty='%Cred%h%Creset -%C(auto)%d%Creset %s %Cgreen(%ar) %C(bold blue)<%an>%Creset' --all"

alias ettercap-mitm='sudo ettercap -T -S -i wlan0 -M arp:remote'

alias grep='grep --color=auto'

eval "$(starship init zsh)"

export PATH="$PATH:/home/ricer/.local/bin"

# source ~/.zsh/zsh-autosuggestions/zsh-autosuggestions.zsh
# source ~/zsh-syntax-highlighting/zsh-syntax-highlighting.zsh
export PATH=$PATH:/home/ricer/.spicetify
export PATH=$PATH:/home/ricer/scripts
