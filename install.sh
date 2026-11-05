#!/usr/bin/env bash
# demo dotfiles: install-script case. rdev runs this instead of symlinking.
set -euo pipefail
here="$(cd "$(dirname "$0")" && pwd)"
echo "demo-dotfiles: install.sh running from ${here} as $(whoami)"
for f in .bash_aliases .vimrc .tmux.conf; do
  ln -sfn "${here}/${f}" "${HOME}/${f}"
  echo "demo-dotfiles: linked ~/${f}"
done
date -u +"installed by demo install.sh at %Y-%m-%dT%H:%M:%SZ" > "${HOME}/.dotfiles-demo-installed"
echo "demo-dotfiles: done"
