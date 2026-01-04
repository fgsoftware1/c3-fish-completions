#!/usr/bin/fish
source c3c.fish
echo 'SUBCOMMANDS:'
complete -C 'c3c '
echo 'ARGS:'
complete -C 'c3c -'
echo "SUNCOMMANDS ARGS(files filtering test):"
complete -C 'c3c compile '