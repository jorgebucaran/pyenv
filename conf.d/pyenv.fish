set -l pyenv_root (pyenv root)
set -U fish_user_paths $fish_user_paths $pyenv_root/shims
set -xg PYENV_SHELL fish
command mkdir -p $pyenv_root/{shims,versions}
command pyenv rehash 2>/dev/null
