[ -t 1 ] || return 0
alias pgtree="$(\cd "${.sh.file%/*}";pwd)/pgtree"
alias pgt='pgtree -M1f'
