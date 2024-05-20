# Set name of the theme to load. Optionally, if you set this to "random"
# it'll load a random theme each time that oh-my-zsh is loaded.
# See https://github.com/robbyrussell/oh-my-zsh/wiki/Themes
# ZSH_THEME="agnoster"
ZSH_THEME="powerlevel10k/powerlevel10k"
DEFAULT_USER=`whoami`

# Which plugins would you like to load? (plugins can be found in ~/.oh-my-zsh/plugins/*)
# Custom plugins may be added to ~/.oh-my-zsh/custom/plugins/
# Example format: plugins=(rails git textmate ruby lighthouse)
# Add wisely, as too many plugins slow down shell startup.
plugins=(
    docker
    gh
    history-substring-search
    kubectl
    tmux
    zsh-autosuggestions
)
# plugins=()
# don't expand aliases _before_ completion has finished
#   like: git comm-[tab]
#setopt complete_aliases

# ZSH-TMUX Settings
ZSH_TMUX_AUTOSTART=true
