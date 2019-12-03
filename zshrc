##################################################
# ZSH Configuration
##################################################
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


##################################################
# Application Configure
##################################################

# AutoJump config
[ -f /usr/local/etc/profile.d/autojump.sh ] && . /usr/local/etc/profile.d/autojump.sh



# Uncomment the following line to display red dots whilst waiting for completion.
COMPLETION_WAITING_DOTS="true"


# Which plugins would you like to load?
# Standard plugins can be found in ~/.oh-my-zsh/plugins/*
# Custom plugins may be added to ~/.oh-my-zsh/custom/plugins/
# Example format: plugins=(rails git textmate ruby lighthouse)
# Add wisely, as too many plugins slow down shell startup.
plugins=(git)

source $ZSH/oh-my-zsh.sh

##################################################
# Environment Variable
##################################################

export EMAIL_163_ADDRESS='cooper_linux@163.com'
export EMAIL_163_PASSWORD='EqAXPt628LCYTq'


##################################################
# User defined function
##################################################

# update the calculation server ip config
calc_update(){
  sed "15s/.*/    HostName $1/" <~/.ssh/config >~/.ssh/config_temp
  mv -f ~/.ssh/config_temp ~/.ssh/config
  rm -f config_temp
}

##################################################
# Example aliases
##################################################

alias ll='ls -lh'
alias la='ls -lah'
alias zrc='cd ~/dev/my_config/ && vim ~/dev/my_config/zshrc'
alias vrc='cd ~/dev/my_config/ && vim ~/dev/my_config/vimrc'
alias config_update='zsh ~/dev/my_config/config_update.sh'


