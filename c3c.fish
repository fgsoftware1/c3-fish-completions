# Disable file completion after c3c 
complete -c c3c -f -k

# Help
complete -c c3c -n "__fish_use_subcommand" -a help -d "Show help"
complete -c c3c -s h -d 'Show help'
complete -c c3c -l help -d 'Show extended help'
complete -c c3c -l hh -d 'Show extended help'

# init
complete -c c3c -n "__fish_use_subcommand" -a init -d 'Initialize project structure'
# init-lib
complete -c c3c -n "__fish_use_subcommand" -a init-lib -d 'Initialize library structure'

# compile
complete -c c3c -n "__fish_use_subcommand" -a compile -d 'Compile files into an executable'
complete -c c3c -n "__fish_seen_subcommand_from compile" -xa "(ls -1 2>/dev/null | grep -E '\\.(c3|c3l)\$')"
# compile-only
complete -c c3c -n "__fish_use_subcommand" -a compile-only -d 'Compile files without linking'
complete -c c3c -n "__fish_seen_subcommand_from compile-only" -xa "(ls -1 2>/dev/null | grep -E '\\.(c3|c3l)\$')"
