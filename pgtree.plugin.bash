[ -t 1 ] || return 0
_path_script="$(\cd "${BASH_SOURCE%/*}";pwd)"
. $_path_script/pgtree
alias pgtree="$_path_script/pgtree"
unset _path_script
