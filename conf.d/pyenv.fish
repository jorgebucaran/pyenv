set -l pyenv_root (pyenv root)
set -x PATH $pyenv_root/shims $PATH
set -x PYENV_SHELL fish
command mkdir -p $pyenv_root/{shims,versions}
