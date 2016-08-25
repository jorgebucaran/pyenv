set -l pyenv_virtualenv_path (string split -r -m2 '/' (realpath (type -p pyenv-virtualenv-init)))
set -x PATH "$pyenv_virtualenv_path[1]/shims" $PATH;
set -x PYENV_VIRTUALENV_INIT 1;


