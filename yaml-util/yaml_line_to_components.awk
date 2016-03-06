$0 !~ /^ *#+.*/ && $0 !~ /^ *$/ {
    idx_key=match($0, /[^ ]/) - 1;   # index of the first non white space character
    idx_col=match($0, /:/);          # colon index
    prefix=substr($0, 1, idx_key)    # the white space prefix
    key=rmv_quote(substr($0, idx_key + 1, idx_col - idx_key - 1));
    val=rmv_quote(substr($0, idx_col + 1));
    print prefix vf key vf val;
}
