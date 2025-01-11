# Use FZF
1. `vim $(fzf)` to open fzf and selected output of `fzf` will be feed to `vim`
2. `vim $(fzf -m`) is alike, but `fzf` is in multi-select mode, use <TAB> to select
3. `vim <Ctrl-T>` to search for a file to edit
4. `<Alt-C` is fuzzy `cd`, will jump to the selected directory.
5. `vim ~/**<TAB>` specify that the search root is home directory
6. `cd ~/**<TAB>` specify that the search root is home directory
7. `<Ctrl-r>` is fuzzy search of bash history
8. `kill -9 **<TAB>` to select processes to kill
9. `ssh **<TAB>` to select a server to ssh to
