#!/usr/bin/fish
source c3c.fish
echo 'SUBCOMMANDS:'
complete -C 'c3c '
echo 'ARGS:'
complete -C 'c3c -'
echo "SUBCOMMANDS ARGS(files filtering test):"
complete -C 'c3c compile '