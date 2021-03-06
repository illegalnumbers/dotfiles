# If you come from  bash you might have to change your $PATH.
export PATH=$HOME/bin:/usr/local/bin:$PATH

vaulted_env(){
  echo "$VAULTED_ENV"
}
POWERLEVEL9K_CUSTOM_VAULTED_ENV="vaulted_env"

export POWERLEVEL9K_VCS_GIT_HOOKS=(vcs-detect-changes git-untracked git-aheadbehind git-tagname)
export POWERLEVEL9K_LEFT_PROMPT_ELEMENTS=(context dir vcs root_indicator custom_vaulted_env status virtualenv)
export POWERLEVEL9K_RIGHT_PROMPT_ELEMENTS=(time)

# Advanced `vcs` color customization
#export POWERLEVEL9K_VCS_CLEAN_FOREGROUND='blue'
#export POWERLEVEL9K_VCS_CLEAN_BACKGROUND='black'
#export POWERLEVEL9K_VCS_UNTRACKED_FOREGROUND='yellow'
#export POWERLEVEL9K_VCS_UNTRACKED_BACKGROUND='black'
#export POWERLEVEL9K_VCS_MODIFIED_FOREGROUND='red'
#export POWERLEVEL9K_VCS_MODIFIED_BACKGROUND='black'

# Path to your oh-my-zsh installation.
export ZSH="$HOME/.oh-my-zsh"

# Set name of the theme to load. Optionally, if you set this to "random"
# it'll load a random theme each time that oh-my-zsh is loaded.
# See https://github.com/robbyrussell/oh-my-zsh/wiki/Themes
ZSH_THEME="powerlevel9k/powerlevel9k"

# Uncomment the following line to use case-sensitive completion.
# CASE_SENSITIVE="true"

# Uncomment the following line to use hyphen-insensitive completion. Case
# sensitive completion must be off. _ and - will be interchangeable.
# HYPHEN_INSENSITIVE="true"

 # Uncomment the following line to disable bi-weekly auto-update checks.
export DISABLE_AUTO_UPDATE="true"

# Uncomment the following line to change how often to auto-update (in days).
# export UPDATE_ZSH_DAYS=13

# Uncomment the following line to disable colors in ls.
# DISABLE_LS_COLORS="true"

# Uncomment the following line to disable auto-setting terminal title.
export DISABLE_AUTO_TITLE="true"

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
# The optional three formats: "mm/dd/yyyy"|"dd.mm.yyyy"|"yyyy-mm-dd"
# HIST_STAMPS="mm/dd/yyyy"

# Would you like to use another custom folder than $ZSH/custom?
# ZSH_CUSTOM=/path/to/new-custom-folder

# Which plugins would you like to load? (plugins can be found in ~/.oh-my-zsh/plugins/*)
# Custom plugins may be added to ~/.oh-my-zsh/custom/plugins/
# Example format: plugins=(rails git textmate ruby lighthouse)
# Add wisely, as too many plugins slow down shell startup.
export FZF_BASE=/usr/local/bin/fzf
[ -f ~/.fzf.zsh ] && source ~/.fzf.zsh
source $HOME/src/zsh-syntax-highlighting/zsh-syntax-highlighting.zsh
PATH="/usr/local/share/python/:$PATH"

plugins=(git fzf zsh-syntax-highlighting)

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

# ssh
# export SSH_KEY_PATH="~/.ssh/rsa_id"

# Set personal aliases, overriding those provided by oh-my-zsh libs,
# plugins, and themes. Aliases can be placed here, though oh-my-zsh
# users are encouraged to define aliases within the ZSH_CUSTOM folder.
# For a full list of active aliases, run `alias`.
#
# Example aliases
# alias zshconfig="mate ~/.zshrc"
# alias ohmyzsh="mate ~/.oh-my-zsh"
export DEFAULT_USER=bennelson

ZSH_HIGHLIGHT_HIGHLIGHTERS=(main brackets pattern root line)

alias dc="docker-compose"

export PATH=$PATH:/usr/local/go/bin
export GOPATH=$HOME/src/go
export GOROOT=$HOME/go
export PATH=$PATH:$GOPATH/bin
export PATH=$PATH:$GOROOT/bin
export GOROOT_BOOTSTRAP=/usr/share/go-1.10
export NODE_PATH=$NODE_PATH:/usr/local/lib/node_modules
export PATH=$PATH:/usr/local/Cellar/gnu-tar/1.30/bin/tar
# renable to remove keys from login shell
# eval "$(ssh-agent -s)"
export PATH=$HOME/src/go/bin:$PATH
export PATH=$HOME/.tfenv/bin:$PATH
alias changecg="export PATH=$HOME/src/cloudgate/bin:$PATH"
export PATH=$HOME/.local/bin:$PATH
fpath=(~/.zsh/completion $fpath)

export NVM_DIR="$HOME/.nvm"
[ -s "$NVM_DIR/nvm.sh" ] && \. "$NVM_DIR/nvm.sh"  # This loads nvm
[ -s "$NVM_DIR/bash_completion" ] && \. "$NVM_DIR/bash_completion"  # This loads nvm bash_completion
source $HOME/.vault-scripts
source $HOME/.consul-scripts
alias argo="java -jar ~/argouml-0.34/argouml.jar"
export PYTHON_CONFIGURE_OPTS="--enable-shared"

# TODO
#
POWERLEVEL9K_PROMPT_ON_NEWLINE=true

source ~/powerlevel10k/powerlevel10k.zsh-theme

POWERLEVEL9K_COLOR_SCHEME='light'

source $HOME/.ldap-scripts

alias pbcopy='xclip -selection clipboard'
alias pbpaste='xclip -selection clipboard -o'
alias get='git fetch && git checkout origin/master'
POWERLEVEL9K_VCS_UNTRACKED_BACKGROUND="BLACK"
POWERLEVEL9K_VCS_UNTRACKED_FOREGROUND="BLACK"
POWERLEVEL9K_VCS_MODIFIED_FOREGROUND='red'
POWERLEVEL9K_VCS_MODIFIED_BACKGROUND='black'
alias gpush='git push origin HEAD:refs/for/master'
alias beerspec='bundle exec rspec'
alias penv='source $(pipenv --venv)/bin/activate'
export PIPENV_VENV_IN_PROJECT=1
eval "$(pipenv --completion)"
alias iphonecharge='sudo usbmuxd -u -U usbmux'
alias pbcopy='xclip -selection clipboard'
alias pbpaste='xclip -selection clipboard -o'
alias fixbar='killall -3 gnome-shell'
export PATH=$PATH:/snap/bin

alias changeconstancy="export PATH=$HOME/src/constancy/bin:$PATH"

. ~/.linuxify

export RUBY_CONFIGURE_OPTS="--with-openssl-dir=$(brew --prefix openssl@1.1)"

### MAC things
# Setup Compiler paths for readline and openssl
local READLINE_PATH=$(brew --prefix readline)
local OPENSSL_PATH=$(brew --prefix openssl)
export LDFLAGS="-L$READLINE_PATH/lib -L$OPENSSL_PATH/lib"
export CPPFLAGS="-I$READLINE_PATH/include -I$OPENSSL_PATH/include"
export PKG_CONFIG_PATH="$READLINE_PATH/lib/pkgconfig:$OPENSSL_PATH/lib/pkgconfig"

# Use the OpenSSL from Homebrew instead of ruby-build
# Note: the Homebrew version gets updated, the ruby-build version doesn't
export RUBY_CONFIGURE_OPTS="--with-openssl-dir=$OPENSSL_PATH"

# Place openssl@1.1 at the beginning of your PATH (preempt system libs)
export PATH=$OPENSSL_PATH/bin:$PATH
# set -x PATH /usr/local/opt/openssl/bin $PATH

eval "$(rbenv init -)"
echo 'export PATH="$HOME/.rbenv/bin:$PATH"' >> ~/.zshrc
export PATH="$HOME/.rbenv/bin:$PATH"