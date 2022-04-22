set -l shards_commands build check init install list lock outdated prune run update version

complete -c shards -n "not __fish_seen_subcommand_from $shards_commands" -a "build" -d "Build the specified <targets> in `bin` path, all build_options are delegated to `crystal build`" -f
complete -c shards -n "not __fish_seen_subcommand_from $shards_commands" -a "check" -d "Verify all dependencies are installed" -f
complete -c shards -n "not __fish_seen_subcommand_from $shards_commands" -a "init" -d "Initialize a `shard.yml` file" -f
complete -c shards -n "not __fish_seen_subcommand_from $shards_commands" -a "install" -d "Install dependencies, creating or using the `shard.lock` file" -f
complete -c shards -n "not __fish_seen_subcommand_from $shards_commands" -a "list" -d "List installed dependencies" -f
complete -c shards -n "not __fish_seen_subcommand_from $shards_commands" -a "lock" -d "Lock dependencies in `shard.lock` but doesn't install them" -f
complete -c shards -n "not __fish_seen_subcommand_from $shards_commands" -a "outdated" -d "List dependencies that are outdated" -f
complete -c shards -n "not __fish_seen_subcommand_from $shards_commands" -a "prune"  -d "Remove unused dependencies from `lib` folder" -f
complete -c shards -n "not __fish_seen_subcommand_from $shards_commands" -a "run" -d "Build and run specified target" -f
complete -c shards -n "not __fish_seen_subcommand_from $shards_commands" -a "update" -d "Update dependencies and `shard.lock`" -f
complete -c shards -n "not __fish_seen_subcommand_from $shards_commands" -a "version" -d "Print the current version of the shard" -f

complete -c shards -s h -l help -d "Print usage synopsis" -x
complete -c shards -l no-color -d "Disable colored output"
complete -c shards -l version -d "Print the shards version"
complete -c shards -l frozen -d "Strictly installs locked versions from shard.lock"
complete -c shards -l without-development -d "Does not install development dependencies"
complete -c shards -l production -d "same as --frozen --without-development"
complete -c shards -l skip-postinstall -d "Does not run postinstall of dependencies"
complete -c shards -l skip-executables -d "Does not install executables"
complete -c shards -l local -d "Don't update remote repositories, use the local cache only"
complete -c shards -l jobs -d "Number of repository downloads to perform in parallel (default: 8). Currently only for git"
complete -c shards -l ignore-crystal-version -d "Has no effect. Kept for compatibility, to be removed in the future"
complete -c shards -s v -l verbose -d "Increase the log verbosity, printing all debug statements"
complete -c shards -s q -l quiet -d "Decrease the log verbosity, printing only warnings and errors"
