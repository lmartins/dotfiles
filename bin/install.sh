#!/usr/bin/env bash

DOTFILES_DIRECTORY="${HOME}/.dotfiles"

cd ${DOTFILES_DIRECTORY}

source ./lib/utils

link() {
    # Force create/replace the symlink.
    ln -fs "${DOTFILES_DIRECTORY}/${1}" "${HOME}/${2}"
}

mirrorfiles() {
    # Force remove the vim directory if it's already there.
    if [ -e "${HOME}/.vim" ]; then
        rm -rf "${HOME}/.vim"
    fi

    # Create the necessary symbolic links between the `.dotfiles` and `HOME`
    # directory. The `bash_profile` sources other files directly from the
    # `.dotfiles` repository.
    link "bash/bashrc"        ".bashrc"
    link "bash/bash_profile"  ".bash_profile"
    link "bash/inputrc"       ".inputrc"
    link "zsh/zlogin"         ".zlogin"
    link "zsh/zshrc"          ".zshrc"
    link "git/gitconfig"      ".gitconfig"
    link "git/gitignore"      ".gitignore"
    link "vim"                ".vim"
    link "vim/gvimrc"         ".gvimrc"
    link "vim/vimrc"          ".vimrc"

    # Create untracked directories
    mkdir ~/.dotfiles/vim/tmp
    mkdir ~/.dotfiles/vim/bundle

    # Add vundle for vim plugins
    git clone https://github.com/gmarik/Vundle.vim.git ~/.vim/bundle/Vundle.vim
    e_success "Added Vundle to manage Vim plugins. Initializing plugins..."
    vim +PluginInstall +qall
    e_success "Plugins initialized."

    # Connect local vim overrides
    e_header "Where do you keep your local vim overrides? Enter the path or hit ENTER to skip."
    read -e -p "> " vimpath
    if [[ $vimpath ]]; then
        ln -fs `eval echo $vimpath` "${HOME}/.vimrc.local"
    fi

    # Connect local git overrides
    e_header "Where do you keep your local git overrides? Enter the path or hit ENTER to skip."
    read -e -p "> " gitpath
    if [[ $gitpath ]]; then
        ln -fs `eval echo $gitpath` "${HOME}/.gitconfig.local"
    fi

    e_success "Dotfile installation complete."
}

# Ask before potentially overwriting files
seek_confirmation "Warning: This step may overwrite your existing dotfiles."

if is_confirmed; then
    mirrorfiles
    source ${HOME}/.bash_profile
else
    printf "Aborting...\n"
    exit 1
fi

