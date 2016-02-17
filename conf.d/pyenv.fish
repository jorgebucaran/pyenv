set -l pyenv_root (pyenv root)
set -x PATH $pyenv_root/shims $PATH
set -x PYENV_SHELL fish
if test ! -d "$pyenv_root/shims"; or test ! -d "$pyenv_root/versions"
    command mkdir -p $pyenv_root/{shims,versions}
end
