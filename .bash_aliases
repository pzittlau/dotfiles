
# enable color support of ls and also add handy aliases
if [ -x /usr/bin/dircolors ]; then
	test -r ~/.dircolors && eval "$(dircolors -b ~/.dircolors)" || eval "$(dircolors -b)" 
    alias ls='ls --color=auto'
    alias grep='grep --color=auto'
fi

alias ll='ls -al'
alias sns='sudo nala search'
alias snu='sudo nala update && sudo nala upgrade'
alias sni='sudo nala install'

alias v='vim'
if [[ -x /usr/bin/nvim ]]; then
    alias vim='nvim'
    alias v='nvim'
fi

