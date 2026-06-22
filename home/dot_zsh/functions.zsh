# ~/.zsh/functions.zsh — managed by chezmoi.
# Each helper guards on the tools it needs so nothing breaks on a machine that
# is missing a given package manager or utility.

# Human-readable disk usage for real filesystems (works for sd*, nvme*, vd*).
disk_usage() {
  df -h -x tmpfs -x devtmpfs -x squashfs -x overlay 2>/dev/null
}

# Update everything that happens to be installed.
update_all() {
  if command -v apt >/dev/null 2>&1; then
    sudo apt update && sudo apt upgrade -y && sudo apt autoremove -y
  fi
  command -v brew   >/dev/null 2>&1 && brew update && brew upgrade
  command -v npm    >/dev/null 2>&1 && npm update -g
  command -v gem    >/dev/null 2>&1 && gem update
  command -v rustup >/dev/null 2>&1 && rustup update
  command -v mise   >/dev/null 2>&1 && mise upgrade --bump
  command -v nvm    >/dev/null 2>&1 && nvm install --lts --reinstall-packages-from=default --latest-npm
  [ -x "$HOME/.scripts/go-up.sh" ] && "$HOME/.scripts/go-up.sh"
  return 0
}

# Pretty git history graph.
git_summary() {
  command -v git >/dev/null 2>&1 || return 1
  git log --oneline --graph --decorate --all
}

# Capture a verbose interactive-login trace for debugging slow shells.
debug_login() {
  zsh -xvic exit &> "$HOME/omz-debug.log"
  echo "Trace written to $HOME/omz-debug.log"
}
