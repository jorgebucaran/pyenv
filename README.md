# Pyenv [![Slack Room][slack-badge]][slack-link]


Pyenv plugin for the Fish shell.

This plugin replaces what `status --is-interactive; and . (pyenv init -|psub)`
does in a more fishy way. This brings the startup time of your shell down
as we do not generate full completions every time the shell starts but only
when `pyenv` gets called.

## Install

* fisherman: `fisher install pyenv`

[slack-link]: https://fisherman-wharf.herokuapp.com/
[slack-badge]:  https://img.shields.io/badge/slack-join%20the%20chat-00B9FF.svg?style=flat-square
