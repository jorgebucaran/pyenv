[![Slack Room][slack-badge]][slack-link]

# Pyenv

[pyenv] plugin support for the fish shell.

## Install

With [fisherman]

```
fisher pyenv
```

## Notes

You need <https://github.com/yyuu/pyenv> to use this plugin.

This plugin replaces what `status --is-interactive; and . (pyenv init -|psub)`
does in a more fishy way. This brings the startup time of your shell down
as we do not generate full completions every time the shell starts but only
when `pyenv` gets called.

[slack-link]: https://fisherman-wharf.herokuapp.com/
[slack-badge]: https://fisherman-wharf.herokuapp.com/badge.svg
[fisherman]: https://github.com/fisherman/fisherman
[pyenv]: https://github.com/yyuu/pyenv
