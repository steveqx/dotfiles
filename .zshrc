source "${HOME}/.shellrc.load"
source "${HOME}/.zgen/zgen.zsh"

if ! zgen saved; then
    echo "Creating a zgen save"

    zgen oh-my-zsh

    # plugins
    zgen oh-my-zsh plugins/aws
    zgen oh-my-zsh plugins/git
    zgen oh-my-zsh plugins/npm
    zgen oh-my-zsh plugins/sudo
    zgen oh-my-zsh plugins/sublime
    zgen oh-my-zsh plugins/tmux

    zgen load zsh-users/zsh-syntax-highlighting
    zgen load zsh-users/zsh-completions src

    # theme
    zgen oh-my-zsh themes/arrow
    # save all to init script
    zgen save
fi

