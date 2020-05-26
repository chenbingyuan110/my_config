##################################################
# ZSH Configuration
##################################################
if [[ "$(uname)" == "Darwin" ]]; then
    export ZSH="/Users/chenbingyuan/.oh-my-zsh"
    ZSH_THEME="powerlevel10k/powerlevel10k"
    # Enable Powerlevel10k instant prompt. Should stay close to the top of ~/.zshrc.
    # Initialization code that may require console input (password prompts, [y/n]
    # confirmations, etc.) must go above this block; everything else may go below.
    if [[ -r "${XDG_CACHE_HOME:-$HOME/.cache}/p10k-instant-prompt-${(%):-%n}.zsh" ]]; then
      source "${XDG_CACHE_HOME:-$HOME/.cache}/p10k-instant-prompt-${(%):-%n}.zsh"
    fi

    # To customize prompt, run `p10k configure` or edit ~/.p10k.zsh.
    [[ ! -f ~/.p10k.zsh ]] || source ~/.p10k.zsh
else
    export ZSH="/root/.oh-my-zsh"
    ZSH_THEME="agnoster"
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
plugins=(git zsh-syntax-highlighting history-substring-search)

source $ZSH/oh-my-zsh.sh

##################################################
# Environment Variable
##################################################

export CHROME_PATH=$HOME/bin/chromedriver

if [[ "$(uname)" == "Darwin" ]]; then
  export PATH=/usr/local/lib/nodejs/node-v12.13.1-linux-x64/bin:$PATH
  export LC_CTYPE=en_US.UTF-8
  export LC_ALL=en_US.UTF-8
  export PATH=/usr/local/Cellar/python/3.7.6_1/Frameworks/Python.framework/Versions/3.7/bin:$PATH
  export PATH=/usr/local/mysql/bin:$PATH
  export PATH=/usr/local/opt/texinfo/bin:$PATH
  export PATH=/Users/chenbingyuan/bin:$PATH
else
  export PATH=/opt/intel/bin:/opt/intel/compilers_and_libraries_2018.5.274/linux/bin/intel64:/opt/intel/compilers_and_libraries_2018.5.274/linux/mpi/intel64/bin:/root/opt/openmpi-4.0.0/bin/:$PATH
  export LD_LIBRARY_PATH=/opt/intel/mkl/lib/intel64:$LD_LIBRARY_PATH
  export LD_LIBRARY_PATH=/opt/intel/lib/intel64:$LD_LIBRARY_PATH
  export RANGER_LOAD_DEFAULT_RC=FALSE
fi



#################################################
# Application needed
##################################################

# the fuck
eval $(thefuck --alias)



#################################################
# User defined function
##################################################

# update .zshrc and .vim/vimrc
zsh ~/dev/my_config/config_update.sh > /dev/null 2>&1

# update the calculation server ip config
calc_update(){
  sed "15s/.*/    HostName $1/" <~/.ssh/config >~/.ssh/config_temp
  mv -f ~/.ssh/config_temp ~/.ssh/config
  rm -f config_temp
}
calc-1_update(){
  sed "26s/.*/    HostName $1/" <~/.ssh/config >~/.ssh/config_temp
  mv -f ~/.ssh/config_temp ~/.ssh/config
  rm -f config_temp
}
calc-2_update(){
  sed "31s/.*/    HostName $1/" <~/.ssh/config >~/.ssh/config_temp
  mv -f ~/.ssh/config_temp ~/.ssh/config
  rm -f config_temp
}
calc-3_update(){
  sed "36s/.*/    HostName $1/" <~/.ssh/config >~/.ssh/config_temp
  mv -f ~/.ssh/config_temp ~/.ssh/config
  rm -f config_temp
}
calc-4_update(){
  sed "41s/.*/    HostName $1/" <~/.ssh/config >~/.ssh/config_temp
  mv -f ~/.ssh/config_temp ~/.ssh/config
  rm -f config_temp
}


##################################################
# Example aliases
##################################################

alias ll='ls -lh'
alias la='ls -lah'
alias zrc='cd ~/dev/my_config/ && vim ~/dev/my_config/zshrc && git add . && git commit -m "daily update" && git push && config_update && cd -'
alias vrc='cd ~/dev/my_config/ && vim ~/dev/my_config/vimrc && git add . && git commit -m "daily update" && git push && config_update && cd -'
alias config_update='zsh ~/dev/my_config/config_update.sh'
alias hexo_test='cd ~/blog/ && hexo clean && hexo generate && hexo server && cd -'
alias hexo_upload='cd ~/blog/ && git add . && git commit -m "daily update" && git push && cd -'
alias toutf='iconv -f GB18030 -t utf-8'
alias soffice='/Applications/LibreOffice.app/Contents/MacOS/soffice'


##################################################
# Zsh vi mode
##################################################
bindkey -v
bindkey 'jj' vi-cmd-mode
bindkey -M vicmd 'h' vi-insert
bindkey -M vicmd 'H' vi-insert-bol
bindkey -M vicmd 'i' up-line-or-history
bindkey -M vicmd 'k' down-line-or-history
bindkey -M vicmd 'j' vi-backward-char
bindkey -M vicmd 'l' vi-forward-char
bindkey -M vicmd 'J' vi-backward-blank-word
bindkey -M vicmd 'L' vi-forward-blank-word
bindkey -M vicmd '/' vi-repeat-search



