source "${HOME}/.shellrc.load"
source "${HOME}/.zgen/zgen.zsh"

if ! zgen saved; then
    echo "Creating a zgen save"

    zgen oh-my-zsh

    # plugins
    zgen oh-my-zsh plugins/aws
    zgen oh-my-zsh plugins/common-aliases
    zgen oh-my-zsh plugins/extract
    zgen oh-my-zsh plugins/git
    zgen oh-my-zsh plugins/gitignore
    zgen oh-my-zsh plugins/git-prompt
    zgen oh-my-zsh plugins/sublime
    zgen oh-my-zsh plugins/sudo
    zgen oh-my-zsh plugins/z

    zgen load zsh-users/zsh-completions
    zgen load zsh-users/zsh-syntax-highlighting
    zgen load arzzen/calc.plugin.zsh

    # theme
    zgen oh-my-zsh themes/arrow

    # save all to init script
    zgen save
fi

