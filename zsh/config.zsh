fpath=($DOT/functions $fpath)

autoload -U $DOT/functions/*(:t)

HISTFILE=~/.zsh_history
HISTSIZE=10000
SAVEHIST=10000
DISABLE_AUTO_UPDATE=true
ZSH_COMPDUMP=~/.zcompdump

setopt NO_BG_NICE # don't nice background tasks
setopt NO_LIST_BEEP
setopt LOCAL_OPTIONS # allow functions to have local options
setopt LOCAL_TRAPS # allow functions to have local traps
setopt HIST_VERIFY
setopt SHARE_HISTORY # share history between sessions ???
setopt EXTENDED_HISTORY # add timestamps to history
# setopt CORRECT
setopt COMPLETE_IN_WORD

setopt APPEND_HISTORY # adds history
setopt INC_APPEND_HISTORY SHARE_HISTORY  # adds history incrementally and share it across sessions
setopt HIST_IGNORE_ALL_DUPS  # don't record dupes in history
setopt HIST_REDUCE_BLANKS

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
    archlinux
    colorize
    direnv
    docker
    gh
    history-substring-search
    kubectl
    kubectx
    tmux
    zsh-autosuggestions
)
# plugins=()
# don't expand aliases _before_ completion has finished
#   like: git comm-[tab]
#setopt complete_aliases

### powerlevel9k configuration

# Overall
POWERLEVEL9K_LEFT_PROMPT_ELEMENTS=(context dir vcs)
POWERLEVEL9K_RIGHT_PROMPT_ELEMENTS=(status root_indicator background_jobs command_execution_time)
POWERLEVEL9K_RIGHT_SEGMENT_SEPARATOR=''
POWERLEVEL9K_RIGHT_SUBSEGMENT_SEPARATOR=''
POWERLEVEL9K_MODE='nerdfont-complete'

# Home
POWERLEVEL9K_HOME_ICON=''
POWERLEVEL9K_HOME_SUB_ICON=''
POWERLEVEL9K_FOLDER_ICON=''

# Time
POWERLEVEL9K_TIME_BACKGROUND='clear'
POWERLEVEL9K_TIME_FOREGROUND='blue'
# POWERLEVEL9K_TIME_ICON='\uF34A'
# POWERLEVEL9K_TIME_FORMAT='%D{%H:%M:%S} \uF43A'
POWERLEVEL9K_TIME_FORMAT='%D{%H:%M:%S} \uE385'


# Status
POWERLEVEL9K_STATUS_VERBOSE=false
POWERLEVEL9K_STATUS_OK_IN_NON_VERBOSE=true
POWERLEVEL9K_STATUS_OK_BACKGROUND='clear'
POWERLEVEL9K_STATUS_OK_VISUAL_IDENTIFIER_COLOR='green'
POWERLEVEL9K_STATUS_ERROR_BACKGROUND='clear'
POWERLEVEL9K_STATUS_ERROR_VISUAL_IDENTIFIER_COLOR='red'

# Command Execution Time
POWERLEVEL9K_COMMAND_EXECUTION_TIME_BACKGROUND='clear'
POWERLEVEL9K_COMMAND_EXECUTION_TIME_FOREGROUND='yellow'
POWERLEVEL9K_EXECUTION_TIME_ICON='\uFA1E'


# VCS
POWERLEVEL9K_VCS_GIT_HOOKS=(vcs-detect-changes git-aheadbehind git-remotebranch git-tagname)

POWERLEVEL9K_VCS_GIT_ICON=''
POWERLEVEL9K_VCS_GIT_GITHUB_ICON=''
POWERLEVEL9K_VCS_BRANCH_ICON='\uE725 '
POWERLEVEL9K_VCS_UNSTAGED_ICON='\u25CF'
POWERLEVEL9K_VCS_STAGED_ICON='\u271A'
POWERLEVEL9K_VCS_UNTRACKED_ICON=''
POWERLEVEL9K_VCS_INCOMING_CHANGES_ICON=''
POWERLEVEL9K_VCS_OUTGOING_CHANGES_ICON='\UF176'

# '\uE777' - h
# '\uFCD2' - r

# POWERLEVEL9K_VCS_CLEAN_FOREGROUND='blue'
POWERLEVEL9K_VCS_CLEAN_BACKGROUND='green'
# POWERLEVEL9K_VCS_OUTGOING_CHANGES_BACKGROUND='yellow'
# POWERLEVEL9K_VCS_INCOMING_CHANGES_BACKGROUND='yellow'
# POWERLEVEL9K_VCS_UNTRACKED_FOREGROUND='yellow'
POWERLEVEL9K_VCS_UNTRACKED_BACKGROUND='yellow'
# POWERLEVEL9K_VCS_MODIFIED_FOREGROUND='red'
POWERLEVEL9K_VCS_MODIFIED_BACKGROUND='yellow'
# POWERLEVEL9K_VCS_AHEAD_BACKGROUND='yellow'

# ZSH-TMUX Settings
ZSH_TMUX_AUTOSTART=true

# zsh-autosuggestions
#bindkey '^[[[CT' autosuggest-accept
#bindkey '^[[[CE' autosuggest-execute

#bindkey '^[^[[D' backward-word
#bindkey '^[^[[C' forward-word
#bindkey '^[[5D' beginning-of-line
#bindkey '^[[5C' end-of-line
#bindkey '^[[3~' delete-char
#bindkey '^?' backward-delete-char
#HISTORY_SUBSTRING_SEARCH_HIGHLIGHT_FOUND='fg=white,bold'
#HISTORY_SUBSTRING_SEARCH_HIGHLIGHT_NOT_FOUND='fg=white,bold'

bindkey '^[[A' history-substring-search-up
bindkey '^[[B' history-substring-search-down
