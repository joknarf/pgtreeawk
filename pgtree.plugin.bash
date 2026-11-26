[ -t 1 ] || return 0
_path_script="$(\cd "${BASH_SOURCE%/*}";pwd)"
. $_path_script/pgtree
PATH="$PATH:$_path_script"
unset _path_script
