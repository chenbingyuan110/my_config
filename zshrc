# set oh-my-zsh and zsh theme
if [[ "$(uname)" == "Darwin" ]]; then
    export ZSH="/Users/chenbingyuan/.oh-my-zsh"
    ZSH_THEME="powerlevel9k/powerlevel9k"
    POWERLEVEL9K_MODE='awesome-patched'
    POWERLEVEL9K_PROMPT_ON_NEWLINE=true
    POWERLEVEL9K_MULTILINE_FIRST_PROMPT_PREFIX="%{%F{249}%}\u250f"
    POWERLEVEL9K_MULTILINE_LAST_PROMPT_PREFIX="%{%F{249}%}\u2517%{%F{default}%} "
    POWERLEVEL9K_PYTHON_ICON='\ue1f0'
    POWERLEVEL9K_SHORTEN_DIR_LENGTH=4
    POWERLEVEL9K_SHORTEN_STRATEGY="truncate_middle"
    POWERLEVEL9K_OS_ICON_BACKGROUND="black"
    POWERLEVEL9K_OS_ICON_FOREGROUND="249"
    POWERLEVEL9K_TODO_BACKGROUND="black"
    POWERLEVEL9K_TODO_FOREGROUND="249"
    POWERLEVEL9K_DIR_HOME_BACKGROUND="black"
    POWERLEVEL9K_DIR_HOME_FOREGROUND="249"
    POWERLEVEL9K_DIR_HOME_SUBFOLDER_BACKGROUND="black"
    POWERLEVEL9K_DIR_HOME_SUBFOLDER_FOREGROUND="249"
    POWERLEVEL9K_DIR_DEFAULT_BACKGROUND="black"
    POWERLEVEL9K_DIR_DEFAULT_FOREGROUND="249"
    POWERLEVEL9K_STATUS_OK_BACKGROUND="black"
    POWERLEVEL9K_STATUS_OK_FOREGROUND="green"
    POWERLEVEL9K_STATUS_ERROR_BACKGROUND="black"
    POWERLEVEL9K_STATUS_ERROR_FOREGROUND="red"
    POWERLEVEL9K_NVM_BACKGROUND="black"
    POWERLEVEL9K_NVM_FOREGROUND="249"
    POWERLEVEL9K_NVM_VISUAL_IDENTIFIER_COLOR="green"
    POWERLEVEL9K_RVM_BACKGROUND="black"
    POWERLEVEL9K_RVM_FOREGROUND="249"
    POWERLEVEL9K_RVM_VISUAL_IDENTIFIER_COLOR="red"
    POWERLEVEL9K_LOAD_CRITICAL_BACKGROUND="black"
    POWERLEVEL9K_LOAD_WARNING_BACKGROUND="black"
    POWERLEVEL9K_LOAD_NORMAL_BACKGROUND="black"
    POWERLEVEL9K_LOAD_CRITICAL_FOREGROUND="249"
    POWERLEVEL9K_LOAD_WARNING_FOREGROUND="249"
    POWERLEVEL9K_LOAD_NORMAL_FOREGROUND="249"
    POWERLEVEL9K_LOAD_CRITICAL_VISUAL_IDENTIFIER_COLOR="red"
    POWERLEVEL9K_LOAD_WARNING_VISUAL_IDENTIFIER_COLOR="yellow"
    POWERLEVEL9K_LOAD_NORMAL_VISUAL_IDENTIFIER_COLOR="green"
    POWERLEVEL9K_RAM_BACKGROUND="black"
    POWERLEVEL9K_RAM_FOREGROUND="249"
    POWERLEVEL9K_RAM_ELEMENTS=(ram_free)
    POWERLEVEL9K_BATTERY_LOW_BACKGROUND="black"
    POWERLEVEL9K_BATTERY_CHARGING_BACKGROUND="black"
    POWERLEVEL9K_BATTERY_CHARGED_BACKGROUND="black"
    POWERLEVEL9K_BATTERY_DISCONNECTED_BACKGROUND="black"
    POWERLEVEL9K_BATTERY_LOW_FOREGROUND="249"
    POWERLEVEL9K_BATTERY_CHARGING_FOREGROUND="249"
    POWERLEVEL9K_BATTERY_CHARGED_FOREGROUND="249"
    POWERLEVEL9K_BATTERY_DISCONNECTED_FOREGROUND="249"
    POWERLEVEL9K_BATTERY_LOW_VISUAL_IDENTIFIER_COLOR="red"
    POWERLEVEL9K_BATTERY_CHARGING_VISUAL_IDENTIFIER_COLOR="yellow"
    POWERLEVEL9K_BATTERY_CHARGED_VISUAL_IDENTIFIER_COLOR="green"
    POWERLEVEL9K_BATTERY_DISCONNECTED_VISUAL_IDENTIFIER_COLOR="249"
    POWERLEVEL9K_TIME_BACKGROUND="black"
    POWERLEVEL9K_TIME_FOREGROUND="249"
    POWERLEVEL9K_TIME_FORMAT="%D{%H:%M:%S} \UE12E"
    POWERLEVEL9K_LEFT_PROMPT_ELEMENTS=('status' 'os_icon' 'virtualenv' 'todo' 'dir' 'vcs')
    POWERLEVEL9K_RIGHT_PROMPT_ELEMENTS=('nvm' 'rvm' 'ram_joined' 'battery')
else
    export ZSH="/root/.oh-my-zsh"
    ZSH_THEME="powerlevel9k/powerlevel9k"
    POWERLEVEL9K_MODE="default"
    POWERLEVEL9K_DISABLE_RPROMPT=false
    POWERLEVEL9K_PROMPT_ON_NEWLINE=true
    POWERLEVEL9K_MULTILINE_LAST_PROMPT_PREFIX="%K{white}%F{black} `date +%T` %f%k%F{white}%f "
    # POWERLEVEL9K_MULTILINE_LAST_PROMPT_PREFIX="▶ "
    POWERLEVEL9K_MULTILINE_FIRST_PROMPT_PREFIX=""
    POWERLEVEL9K_PROMPT_ADD_NEWLINE=true
    POWERLEVEL9K_COLOR_SCHEME='dark'
    POWERLEVEL9K_LEFT_PROMPT_ELEMENTS=(virtualenv dir vcs)
    POWERLEVEL9K_RIGHT_PROMPT_ELEMENTS=(status nvm rvm background_jobs ram context)
fi


# AutoJump config
[ -f /usr/local/etc/profile.d/autojump.sh ] && . /usr/local/etc/profile.d/autojump.sh


# Uncomment the following line to use case-sensitive completion.
# CASE_SENSITIVE="true"

# Uncomment the following line to use hyphen-insensitive completion.
# Case-sensitive completion must be off. _ and - will be interchangeable.
# HYPHEN_INSENSITIVE="true"

# Uncomment the following line to disable bi-weekly auto-update checks.
# DISABLE_AUTO_UPDATE="true"

# Uncomment the following line to automatically update without prompting.
# DISABLE_UPDATE_PROMPT="true"

# Uncomment the following line to change how often to auto-update (in days).
# export UPDATE_ZSH_DAYS=13

# Uncomment the following line if pasting URLs and other text is messed up.
# DISABLE_MAGIC_FUNCTIONS=true

# Uncomment the following line to disable colors in ls.
# DISABLE_LS_COLORS="true"

# Uncomment the following line to disable auto-setting terminal title.
# DISABLE_AUTO_TITLE="true"

# Uncomment the following line to enable command auto-correction.
# ENABLE_CORRECTION="true"

# Uncomment the following line to display red dots whilst waiting for completion.
# COMPLETION_WAITING_DOTS="true"

# Uncomment the following line if you want to disable marking untracked files
# under VCS as dirty. This makes repository status check for large repositories
# much, much faster.
# DISABLE_UNTRACKED_FILES_DIRTY="true"

# Uncomment the following line if you want to change the command execution time
# stamp shown in the history command output.
# You can set one of the optional three formats:
# "mm/dd/yyyy"|"dd.mm.yyyy"|"yyyy-mm-dd"
# or set a custom format using the strftime function format specifications,
# see 'man strftime' for details.
# HIST_STAMPS="mm/dd/yyyy"

# Would you like to use another custom folder than $ZSH/custom?
# ZSH_CUSTOM=/path/to/new-custom-folder

# Which plugins would you like to load?
# Standard plugins can be found in ~/.oh-my-zsh/plugins/*
# Custom plugins may be added to ~/.oh-my-zsh/custom/plugins/
# Example format: plugins=(rails git textmate ruby lighthouse)
# Add wisely, as too many plugins slow down shell startup.
plugins=(git)

source $ZSH/oh-my-zsh.sh

# User configuration

# export MANPATH="/usr/local/man:$MANPATH"

# You may need to manually set your language environment
# export LANG=en_US.UTF-8

# Preferred editor for local and remote sessions
# if [[ -n $SSH_CONNECTION ]]; then
#   export EDITOR='vim'
# else
#   export EDITOR='mvim'
# fi

# Compilation flags
# export ARCHFLAGS="-arch x86_64"

# Set personal aliases, overriding those provided by oh-my-zsh libs,
# plugins, and themes. Aliases can be placed here, though oh-my-zsh
# users are encouraged to define aliases within the ZSH_CUSTOM folder.
# For a full list of active aliases, run `alias`.


# User defined function
calc_update(){
  sed "15s/.*/    HostName $1/" <~/.ssh/config >~/.ssh/config_temp
  mv -f ~/.ssh/config_temp ~/.ssh/config
  rm -f config_temp
}

# Example aliases
# alias zshconfig="mate ~/.zshrc"
alias ll='ls -lh'
alias la='ls -lah'
alias zrc='vim ~/.zshrc'
alias vrc='vim ~/.vim/vimrc'
