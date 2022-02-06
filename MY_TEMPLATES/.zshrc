# Enable Powerlevel10k instant prompt. Should stay close to the top of ~/.zshrc.
# Initialization code that may require console input (password prompts, [y/n]
# confirmations, etc.) must go above this block; everything else may go below.
if [[ -r "${XDG_CACHE_HOME:-$HOME/.cache}/p10k-instant-prompt-${(%):-%n}.zsh" ]]; then
  source "${XDG_CACHE_HOME:-$HOME/.cache}/p10k-instant-prompt-${(%):-%n}.zsh"
fi

# If you come from bash you might have to change your $PATH.
# export PATH=$HOME/bin:/usr/local/bin:$PATH

# Path to your oh-my-zsh installation.
export ZSH="/Users/zhuk/.oh-my-zsh"

# Set name of the theme to load --- if set to "random", it will
# load a random theme each time oh-my-zsh is loaded, in which case,
# to know which specific one was loaded, run: echo $RANDOM_THEME
# See https://github.com/ohmyzsh/ohmyzsh/wiki/Themes

#ZSH_THEME="robbyrussell"
ZSH_THEME="powerlevel10k/powerlevel10k"
source ~/.oh-my-zsh/plugins/zsh-syntax-highlighting/zsh-syntax-highlighting.zsh
plugins=(git docker gcloud terraform vagrant history-substring-search zsh-autosuggestions grc zsh-syntax-highlighting)
source $ZSH/oh-my-zsh.sh

# Подключаем grc
if [ -f /opt/homebrew/bin/grc ]; then
    alias cvs="grc --colour=auto cvs"
    alias diff="grc --colour=auto diff"
    alias esperanto="grc --colour=auto esperanto"
    alias gcc="grc --colour=auto gcc"
    alias irclog="grc --colour=auto irclog"
    alias ldap="grc --colour=auto ldap"
    alias log="grc --colour=auto log"
    alias netstat="grc --colour=auto netstat"
    alias ping="grc --colour=auto ping"
    alias proftpd="grc --colour=auto proftpd"
    alias traceroute="grc --colour=auto traceroute"
    alias wdiff="grc --colour=auto wdiff"
    alias dig="grc --colour=auto dig"
#    alias ll="grc --colour=auto ls -l"
    alias cat="grc --colour=auto cat"
    alias zcat="grc --colour=auto zcat"
    alias make="grc --colour=auto make"
    alias gcc="grc --colour=auto gcc"
    alias g++="grc --colour=auto g++"
    alias head="grc --colour=auto head"
    alias mount="grc --colour=auto mount"
    alias ps="grc --colour=auto ps"
    alias mtr="grc --colour=auto mtr"
    alias zgrep="grc --colour=auto zgrep"
fi

# Set list of themes to pick from when loading at random
# Setting this variable when ZSH_THEME=random will cause zsh to load
# a theme from this variable instead of looking in $ZSH/themes/
# If set to an empty array, this variable will have no effect.
# ZSH_THEME_RANDOM_CANDIDATES=( "robbyrussell" "agnoster" )

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
# DISABLE_MAGIC_FUNCTIONS="true"

# Uncomment the following line to disable colors in ls.
# DISABLE_LS_COLORS="true"

# Uncomment the following line to disable auto-setting terminal title.
# DISABLE_AUTO_TITLE="true"

# Uncomment the following line to enable command auto-correction.
# ENABLE_CORRECTION="true"

# Uncomment the following line to display red dots whilst waiting for completion.
# Caution: this setting can cause issues with multiline prompts (zsh 5.7.1 and newer seem to work)
# See https://github.com/ohmyzsh/ohmyzsh/issues/5765
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
# Standard plugins can be found in $ZSH/plugins/
# Custom plugins may be added to $ZSH_CUSTOM/plugins/
# Example format: plugins=(rails git textmate ruby lighthouse)
# Add wisely, as too many plugins slow down shell startup.

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
#
# Example aliases
# alias zshconfig="mate ~/.zshrc"
# alias ohmyzsh="mate ~/.oh-my-zsh"

alias mmc='mc -S darkfar'
alias mc='LANG=en_EN.UTF-8 mc'
alias mcedit='LANG=en_EN.UTF-8 mcedit'
alias lla='ll -a'
#alias lll='ls -l'

alias cl=clear
alias cdd='cd ~/SIBEDGE/PROJECT/'
alias cdi='cd ~/SIBEDGE/PROJECT/ansible-inventory'
alias cds='cd ~/myscripts'
alias cdt='cd ~/SIBEDGE/PROJECT/static-vars-testcenters'
alias cre='cd ~/myscripts && ./createEnv.sh'
alias cdp='cd ~/myproject/'
alias cdnano='cd /opt/homebrew/Cellar/nano/5.8/share/nano'
alias ui='echo "cd to SIBEDGE..." && cd ~/SIBEDGE/PROJECT/ && echo "rm -rf ansible-inven... bla bla ... " && rm -rf ansible-inventory && git clone git@github.com:AnchorFreePartner/ansible-inventory.git && cd ansible-inventory'
alias ut='echo "cd to SIBEDGE..." && cd ~/SIBEDGE/PROJECT/ && echo "rm -rf static-vars-tes... bla bla ... " && rm -rf static-vars-testcenters && git clone git@github.com:AnchorFreePartner/static-vars-testcenters.git && cd static-vars-testcenters'

export PATH=/opt/homebrew/bin:$PATH
export PATH="$HOME/bin:$PATH/"

# To customize prompt, run `p10k configure` or edit ~/.p10k.zsh.
[[ ! -f ~/.p10k.zsh ]] || source ~/.p10k.zsh
