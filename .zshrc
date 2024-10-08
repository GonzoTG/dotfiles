# export PATH=$HOME/bin:/usr/local/bin:$PATH
export PATH=$PATH:/mnt/linux/scripts
# Path to your oh-my-zsh installation.
export ZSH="$HOME/.oh-my-zsh"
export SSH_AUTH_SOCK=~/Library/Group\ Containers/2BUA8C4S2C.com.1password/t/agent.sock
export EDITOR="code -w"
#
# set the default editor 
# if [[ `git config core.editor` = ""]]; then
#   if [[ `uname` == "Linux" ]]; then # It's Linux
#     sudo git config --global core.editor "micro"
#   elif [[ `uname` == "Darwin" ]]; then # It's a MAC
#     git config --global core.editor "code --wait"
#   fi
# fi
# Aliases
alias conf='micro ~/.zshrc'
alias src='source ~/.zshrc'
alias fs='du -hs * | sort -h' #print size of current files and directories in the current directory, sorted by size
alias duh='du -c -h -d 1 | sort -h'
# alias op='open .' #open current folder in the macOS Finder
alias pip=pip3
alias python=python3
alias yp='yadm pull -f'

alias cdp='cd ..'#quicker to type in :p
alias ignore='micro .gitignore'

alias sl="tail -n50 -f /var/log/syslog"

alias ipa='ifconfig | grep "inet " | grep -v 127' | sort -h #get your ip address
alias ipa6='ifconfig |grep "inet6 " | sort -h # get your ipv6 address
alias wifi='networksetup -setairportpower en0' #wifi on and wifi off shortcuts

alias pm='python manage.py'
alias ipy="python -c 'import IPython; IPython.terminal.ipapp.launch_new_instance()'" #user the powerline in the iPython shell
alias activate="source \$(ls */bin/activate)" # to activate a virtual environment (redundant with autoenv)
#
# End of Alias Definition
#
# Set name of the theme to load --- if set to "random", it will
# load a random theme each time oh-my-zsh is loaded, in which case,
# to know which specific one was loaded, run: echo $RANDOM_THEME
# See https://github.com/ohmyzsh/ohmyzsh/wiki/Themes
#ZSH_THEME="powerlevel9k/powerlevel9k"
#ZSH_THEME="agnoster"
ZSH_THEME="gnzh"
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

# Uncomment one of the following lines to change the auto-update behavior
# zstyle ':omz:update' mode disabled  # disable automatic updates
zstyle ':omz:update' mode auto      # update automatically without asking
# zstyle ':omz:update' mode reminder  # just remind me to update when it's time

# Uncomment the following line to change how often to auto-update (in days).
zstyle ':omz:update' frequency 7

# Uncomment the following line if pasting URLs and other text is messed up.
# DISABLE_MAGIC_FUNCTIONS="true"

# Uncomment the following line to disable colors in ls.
# DISABLE_LS_COLORS="true"

# Uncomment the following line to disable auto-setting terminal title.
# DISABLE_AUTO_TITLE="true"

# Uncomment the following line to enable command auto-correction.
# ENABLE_CORRECTION="true"

# Uncomment the following line to display red dots whilst waiting for completion.
# You can also set it to another string to have that shown instead of the default red dots.
# e.g. COMPLETION_WAITING_DOTS="%F{yellow}waiting...%f"
# Caution: this setting can cause issues with multiline prompts in zsh < 5.7.1 (see #5765)
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
#plugins=(git)

plugins=(
git
ssh-agent
copypath
copyfile
zsh-autosuggestions
web-search
jsontools
macports
macos
sudo
vscode
history-substring-search
docker
docker-compose
)
source $ZSH/oh-my-zsh.sh

# User configuration

# export MANPATH="/usr/local/man:$MANPATH"

# You may need to manually set your language environment
# export LANG=en_US.UTF-8

# Preferred editor for local and remote sessions
# if [[ -n $SSH_CONNECTION ]]; then
#   export EDITOR='nano'
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
prompt_context() {
  if [[ "$USER" != "$DEFAULT_USER" || -n "$SSH_CLIENT" ]]; then
#    prompt_segment black default "%(!.%{%F{yellow}%}.)$USER"
  fi
}

# Antigen
# downloaded with brew - No configuration done - 12-9-21
#source /opt/homebrew/Cellar/antigen/2.2.3/share/antigen/antigen.zsh

# Pull latest version of zshrc
# This won't take effect until a source is issued or the next time you login
# yadm pull -f


test -e "$HOME/.shellfishrc" && source "$HOME/.shellfishrc"
export PATH="/opt/homebrew/opt/mysql-client/bin:$PATH"
