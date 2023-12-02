# Prompt 
autoload -Uz vcs_info
autoload -U colors && colors
precmd() { vcs_info }
zstyle ':vcs_info:git*' formats '%F{green} %f%F{red} %b%f %c'
zstyle ':vcs_info:git*+set-message:*' hooks git-untracked
+vi-git-untracked(){
    if [[ $(git rev-parse --is-inside-work-tree 2> /dev/null) == 'true' ]] && \
        git status --porcelain | grep '??' &> /dev/null ; then
        hook_com[staged]+=' ' 
    fi
}
zstyle ':vcs_info:git*' check-for-changes true
setopt PROMPT_SUBST
PROMPT='%F{red}%B[%f%F{yellow}%n%f%F{green}@%f%F{blue}%M%f %F{magenta}%~%f${vcs_info_msg_0_}%F{red}]%f%b$ '

# Basic settings
HISTFILE=~/.cache/.histfile
HISTSIZE=1000
SAVEHIST=100000

# auto cd if it is directory
setopt autocd

# Use vim keybindings
bindkey -v
export KEYTIMEOUT=1

# Completions
zstyle :compinstall filename '/home/isorr/.zshrc'
autoload -U compinit
zstyle ':completion:*' menu select
_comp_options+=(globdots)
autoload -Uz compinit
compinit

# Disable ctrl-s to freeze terminal
stty -ixon <$TTY >$TTY

# Change cursor shape for different vi modes
function zle-keymap-select () {
    case $KEYMAP in
        vicmd) echo -ne '\e[1 q';;      
        viins|main) echo -ne '\e[5 q';; 
    esac
}
zle -N zle-keymap-select
zle-line-init() {
    zle -K viins 
    echo -ne "\e[5 q"
}
zle -N zle-line-init
echo -ne '\e[5 q' 
preexec() { echo -ne '\e[5 q' ;} 

# Alias
alias \
        grep="grep --color=auto" \
        diff="diff --color=auto" \
        ccat="highlight --out-format=ansi" \
	cat="bat"

alias \
        ka="killall" \
        g="git" \
        sdn="shutdown -h now" \
        e="$EDITOR" \
        v="$EDITOR" \
        z="zathura" \
	vim="nvim" \
	vi="nvim" \
	v="nvim"

alias \
        lt="exa --icons --color=always -T" \
        lta="exa --icons --color=always -Ta" \
        la="exa --icons --color=always -al" \
        ls="exa --icons --color=always -l" \
        l="exa --icons --color=always -1"

alias \
        ez="nvim ~/.config/zsh/.zshrc" \
        ee="nvim ~/.zshenv" \
        ex="nvim ~/.config/X11/xinitrc" 


alias wget='wget --hsts-file="$XDG_CACHE_HOME"/wget-hsts'
alias startx='startx "$XDG_CONFIG_HOME/X11/xinitrc"'

# Syntax highlighting
source /usr/share/zsh/plugins/zsh-syntax-highlighting/zsh-syntax-highlighting.zsh
