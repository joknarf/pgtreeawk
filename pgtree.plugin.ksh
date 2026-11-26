[ -t 1 ] || return 0
PATH="$PATH:$(\cd "${.sh.file%/*}";pwd)"
