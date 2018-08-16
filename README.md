[![Slack Room][slack-badge]][slack-link]

# Pyenv

[pyenv] plugin support for the fish shell.

## Install

With [fisherman]

```console
$ fisher pyenv
```

You might also, need to put this @ `~/.config/fish/config.fish`:

```fish
set PYENV_ROOT ~/.pyenv
set PYENV_SHELL fish

set PATH ~/.pyenv/bin ~/.pyenv/shims $PATH
```

## Notes

You need <https://github.com/yyuu/pyenv> to use this plugin.

This plugin replaces what `status --is-interactive; and . (pyenv init -|psub)`
does in a more fishy way. This brings the startup time of your shell down
as we do not generate full completions every time the shell starts but only
when `pyenv` gets called.

On Fish 2.3.0 and later support was introduced that automatically loads
snippets in `conf.d`. However, these snippets are evaluated **before** your
`config.fish`. If you're setting `PYENV_ROOT` in your `config.fish` to
relocate your pyenv installation this will be evaluated after our plugin
gets loaded and hence have no effect. In order to fix this you should drop
a `000-env.fish` file in your `~/.config/fish/conf.d` folder which sets
up your environment accordingly.

[slack-link]: https://fisherman-wharf.herokuapp.com/
[slack-badge]: https://fisherman-wharf.herokuapp.com/badge.svg
[fisherman]: https://github.com/fisherman/fisherman
[pyenv]: https://github.com/yyuu/pyenv
