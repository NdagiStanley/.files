# =================
#   PATH
# =================

export PATH="$HOME/bin:$PATH"

# Fixing https://github.com/robbyrussell/oh-my-zsh/issues/6835
ZSH_DISABLE_COMPFIX=true

ZSH="${HOME}/.oh-my-zsh"
ZSH_THEME="rafiki"

# Add wisely, as too many plugins slow down shell startup.
plugins=(git z zsh-autosuggestions)

source $ZSH/oh-my-zsh.sh
source $HOME/.asdf/asdf.sh
source $HOME/.asdf/completions/asdf.bash

# Preferred editor all sessions
export EDITOR='vim'

# ssh
export SSH_KEY_PATH="${HOME}/.ssh/"

# =====================
#   Shell Functions
# =====================
if [ -f $HOME/.aliases ]; then
    source $HOME/.aliases
fi

if [ -f $HOME/.functions ]; then
    source $HOME/.functions
fi

# Put any proprietary or private functions/values in ~/.private, and this will source them
if [ -f $HOME/.private ]; then
    source $HOME/.private
fi
