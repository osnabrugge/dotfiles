# ~/.zsh/aliases.zsh — managed by chezmoi.
# Runtime `command -v` guards keep this portable across machines, so it is
# safe to load even when a given tool is not installed.

# Better cat
if command -v bat >/dev/null 2>&1; then
  alias cat='bat --paging=never'
elif command -v batcat >/dev/null 2>&1; then
  alias cat='batcat --paging=never'
fi

# Faster find (Debian/Ubuntu ship fd as fdfind)
if ! command -v fd >/dev/null 2>&1 && command -v fdfind >/dev/null 2>&1; then
  alias fd='fdfind'
fi

# eza directory listings
if command -v eza >/dev/null 2>&1; then
  alias l='eza -bGF --header --git --color=always --group-directories-first --icons'
  alias lS='eza -1 --color=always --group-directories-first --icons'
  alias la='eza --long --all --group --group-directories-first --icons'
  alias ll='eza -la --octal-permissions --group-directories-first --icons'
  alias llm='eza -lbGd --header --git --sort=modified --color=always --group-directories-first --icons'
  alias ls='eza --color=always --group-directories-first --icons'
  alias lsa='eza -lah --color=always --group-directories-first --icons'
  alias lt='eza --tree --level=2 --color=always --group-directories-first --icons'
  alias lx='eza -lbhHigUmuSa@ --time-style=long-iso --git --color-scale --color=always --group-directories-first --icons'
fi

# zoxide-powered cd (zoxide is initialized in .zshrc)
if command -v zoxide >/dev/null 2>&1; then
  alias cd='z'
fi

# Modern editor
if command -v nvim >/dev/null 2>&1; then
  alias vim='nvim'
fi

# git helpers
if command -v lazygit >/dev/null 2>&1; then
  alias lg='lazygit'
fi
if command -v git >/dev/null 2>&1; then
  alias g='git'
  alias gnp='git --no-pager'
fi
