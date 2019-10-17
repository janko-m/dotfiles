# Enable resourcing .bash_profile without duplicating PATH entries
if [ -x /usr/libexec/path_helper ]; then
  PATH=''
  eval `/usr/libexec/path_helper -s`
fi

# github.com/sstephenson/rbenv
export PATH="$HOME/.rbenv/bin:$PATH"
eval "$(rbenv init - --no-rehash)"

for file in ~/bin/*.sh; do
  source "$file"
done

export EDITOR="nvim"
alias vim=nvim

# http://bocoup.com/weblog/shell-hacking-cdpath/
export CDPATH="~:~/Code:~/Code/citrusbyte"
# `brew install bash-completion2`
if [ -f /usr/local/share/bash-completion/bash_completion ]; then
  source "/usr/local/share/bash-completion/bash_completion"
fi

source ~/bin/bash_completion_tmux.sh

# Disable Ctrl-s, so I can use surround.vim
stty -ixon

# Heroku Toolbelt
export PATH="/usr/local/heroku/bin:$PATH"

# github.com/defunkt/hub
alias git="hub"

# Don't less output from ri
export RI="--no-pager"

# List files vertically
alias ls="ls -1"
alias ll="ls -la"

# For the Go language
export GOROOT="/usr/local/Cellar/go/1.9.2/libexec"

# Add my scripts to PATH
export PATH="~/bin:$PATH"

# Prettier `ls` colors
export CLICOLOR=1
export LSCOLORS="ExGxBxDxCxEgEdxbxgxcxd"

# UTF-8
export LC_ALL=en_US.UTF-8
export LANG=en_US.UTF-8

# a lot of history
export HISTSIZE=10000

# https://github.com/junegunn/fzf
export FZF_DEFAULT_COMMAND='rg --files'

# https://github.com/berkshelf/berkshelf
export BERKSHELF_CHEF_CONFIG=~/.chef/knife.rb

# https://github.com/asdf-vm/asdf
source ~/.asdf/asdf.sh
export PATH="/usr/local/opt/llvm@4/bin:$PATH"
