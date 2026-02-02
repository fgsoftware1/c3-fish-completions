# Disable file completion after c3c 
complete -c c3c -f -k

# Help
complete -c c3c -n "__fish_use_subcommand" -a help -d "Show help"
complete -c c3c -s h -d 'Show help'
complete -c c3c -l help -d 'Show extended help'

# init
complete -c c3c -n "__fish_use_subcommand" -a init -d 'Initialize project structure'
# init-lib
complete -c c3c -n "__fish_use_subcommand" -a init-lib -d 'Initialize library structure'

# c3 files filtering
function __fish_c3c_complete_files
    set -l files *.c3 *.c3l
    set -l added (commandline -opc | string match -r '.*\.(c3|c3l)$')
    
    for file in $files
        if not contains $file $added
            echo $file
        end
    end
end
# build
complete -c c3c -n "__fish_use_subcommand" -a build -d 'Build the target in the current project' 

# compile
complete -c c3c -n "__fish_use_subcommand" -a compile -d 'Compile files into an executable'
complete -c c3c -n "__fish_seen_subcommand_from compile" -f -a "(__fish_c3c_complete_files)"
# compile-only
complete -c c3c -n "__fish_use_subcommand" -a compile-only -d 'Compile files without linking'
complete -c c3c -n "__fish_seen_subcommand_from compile-only" -f -a "(__fish_c3c_complete_files)"
# static-lib
complete -c c3c -n "__fish_use_subcommand" -a static-lib -d 'Compile files without project into a static library'
complete -c c3c -n "__fish_seen_subcommand_from static-lib" -f -a "(__fish_c3c_complete_files)"

# Optimization flags
complete -c c3c -n "__fish_use_subcommand" -s g -d 'Debug info'
complete -c c3c -n "__fish_use_subcommand" -o g0 -d 'No debug info'

complete -c c3c -n "__fish_use_subcommand" -s O -x -a '0' -d 'Safe, No optimization, Debug info'
complete -c c3c -n "__fish_use_subcommand" -s O -x -a '1' -d 'Safe, High optimization, Debug info'
complete -c c3c -n "__fish_use_subcommand" -s O -x -a '2' -d 'Unsafe, High optimization, Debug info'
complete -c c3c -n "__fish_use_subcommand" -s O -x -a '3' -d 'Unsafe, High, Single module, Debug info'
complete -c c3c -n "__fish_use_subcommand" -s O -x -a '4' -d 'Unsafe, Highest optimization, Relaxed maths, Single module, Debug info, No panic messages'
complete -c c3c -n "__fish_use_subcommand" -s O -x -a '5' -d 'Unsafe, Highest optimization, Fast maths, Single module, Debug info, No panic messages, No backtrace'
complete -c c3c -n "__fish_use_subcommand" -s O -x -a 's' -d 'Unsafe, High optimization, Small code, Single module, No debug info, No panic messages'
complete -c c3c -n "__fish_use_subcommand" -s O -x -a 'z' -d 'Unsafe, High optimization, Tiny code, Single module, No debug info, No panic messages, No backtrace'