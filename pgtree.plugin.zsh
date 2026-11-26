[ -t 1 ] || return 0
alias pgtree="$(\cd "${0%/*}";pwd)/pgtree"
pgt() { pgtree -M1f "$@"; }
zle -N pgt
: "${PGT_BIND:=\C-p}"
bindkey "$PGT_BIND" pgt
