#!/bin/zsh

set -euo pipefail

script_name=$0
do_symlinks=false
do_packages=false

usage() {
  echo "Usage: $script_name [--symlinks] [--packages]"
  exit 0
}

# No args
(( $# == 0 )) && usage

# Handle args
for arg in "$@"; do
  case $arg in
    --symlinks) do_symlinks=true ;;
    --packages) do_packages=true ;;
    --help) usage ;;
    *)
      echo "Unknown option: $arg" >&2
      exit 1
      ;;
  esac
done



# Install .dotfiles as symlinks
if (( do_symlinks )); then
  dirname=$(pwd)

  ln -sf "${dirname}/ideavimrc" "$HOME/.ideavimrc"
  ln -sf "${dirname}/vimrc" "$HOME/.vimrc"
  ln -sf "${dirname}/zshrc" "$HOME/.zshrc"
  ln -sf "${dirname}/ghosttyrc" "$HOME/.config/ghostty/config"
  ln -sf "${dirname}/aerospace.toml" "$HOME/.aerospace.toml"
  ln -sf "${dirname}/nvim" "$HOME/.config/nvim"
fi

# Install packages
if (( do_packages )); then
  brew tap neovim/neovim
  brew install -HEAD neovim # nightly
  brew install ripgrep
  brew install fd
fi

