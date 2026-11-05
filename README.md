# demo dotfiles (rdev test fixture)

A throwaway dotfiles repo for testing rdev's "Dotfiles repository" setting.
Nothing here is personal or secret. Each branch exercises one path in `rdev-setup`:

| Branch | Has an install script? | What rdev should do | How to check on the box |
| --- | --- | --- | --- |
| `main` | No | Clone to `~/.dotfiles`, symlink `.bash_aliases`, `.vimrc`, `.tmux.conf` into `~`. `README.md` is **not** linked (no leading dot) | `ls -la ~ \| grep dotfiles`, then `demo-dotfiles` in a new shell |
| `with-install` | `install.sh` | Run it instead of symlinking. It links the same files, writes `~/.dotfiles-demo-installed` and prints a line into `~/startup.log` | `cat ~/.dotfiles-demo-installed`; `grep demo-dotfiles ~/startup.log` |
| `broken-install` | `install.sh` that exits 1 | Box still `succeeded`; row shows the **dotfiles warning** badge; Open in Claude still works | `grep -A5 '== dotfiles ==' ~/startup.log` |

Conflict-rule test: also upload your own `~/.vimrc` in Settings → Dotfiles. Your
upload should win, and the repo's copy should be kept as `~/.vimrc.rdev-repo`.
