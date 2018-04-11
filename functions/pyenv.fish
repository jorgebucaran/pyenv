set __pyenv_sh_commands (command pyenv commands --sh)

function pyenv
    set command $argv[1]
    set -e argv[1]

    switch "$command"
        case $__pyenv_sh_commands
            source (command pyenv "sh-$command" $argv | psub)

        case \*
            command pyenv "$command" $argv
    end
end
