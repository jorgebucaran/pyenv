if not command -s pyenv > /dev/null
    echo "pyenv: command not found. See https://github.com/yyuu/pyenv"
    exit 1
end

set -l pyenv_root (pyenv root)
set -x PATH $pyenv_root/shims $PATH
set -x PYENV_SHELL fish
if test ! -d "$pyenv_root/shims"; or test ! -d "$pyenv_root/versions"
    command mkdir -p $pyenv_root/{shims,versions}
end
