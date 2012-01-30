export PATH=/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin:/usr/games
bindkey -v
autoload -U compinit promptinit        
compinit
promptinit        
prompt walters
plugins=(git svn github node vi-mode)
