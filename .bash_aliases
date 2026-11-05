# demo dotfiles: proves ~/.bash_aliases was linked and is sourced by ~/.bashrc
export DEMO_DOTFILES_BRANCH="with-install"
demo-dotfiles() {
  echo "demo dotfiles loaded (branch: ${DEMO_DOTFILES_BRANCH}, from: $(readlink -f ~/.bash_aliases))"
}
alias ll='ls -alF'
alias gs='git status -sb'
