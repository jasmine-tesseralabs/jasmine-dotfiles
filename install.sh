#!/usr/bin/env bash
# demo dotfiles: failing install script. The box must still finish setup
# (repos cloned, startup script run) and show a dotfiles warning, not a failure.
echo "demo-dotfiles: install.sh starting, about to fail on purpose"
echo "demo-dotfiles: simulated error: could not find thing-that-does-not-exist" >&2
exit 1
