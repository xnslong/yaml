# decide by the length of preceeding white space.
# this method depends on a number named "checked_level". 
#
#   checked_level keeps the level whose prefix has been decided
#
# besides it, this function also keeps an array containing the preceeding 
# white spaces, named prefix. the function will maintain the array by itself,
# so outer programs should take care when using variable or array with this
# name.
function decide_yaml_level(white_sp) {
    len=length(white_sp);
    result_level=1;
    for (level = checked_level; level >= 1; level--) {
        if (len > length(prefix[level])) {
            result_level=level + 1;
            break;
        } else if (len == length(prefix[level])) {
            result_level=level;
            break;
        }
    }
    if (result_level < 1) {
        result_level=1;
    }
    prefix[result_level]=white_sp;
    return result_level;
}


# remove prefix and suffix white spaces, and if the string is surrounded by quotes, remove them.
function rmv_quote(v) { 
    gsub(/^\s*|\s*$/, "", v); 
    if (substr(v,1,1) == "\"" && substr(v,length(v),1) == "\"") {
        return substr(v,2,length(v)-2);
    } else {
        return v;
    }
}
