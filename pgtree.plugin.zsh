[ -t 1 ] || return 0
PATH="$PATH:$(\cd "${0%/*}";pwd)"
