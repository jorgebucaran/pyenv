# fisherman-pyenv

Pyenv plugin for Fisherman.

This plugin replaces what `status --is-interactive; and . (pyenv init -|psub)`
does in a more fishy way. This brings the startup time of your shell down
as we do not generate full completions every time the shell starts but only
when `pyenv` gets called.

In order to use this plugin: `fisher install pyenv`.
