#!/usr/bin/awk -f
NR==FNR {
    first[$0]=1
    next
}
{
    other[$0]=1
}
END {
    for (word in first) {
        if (!(word in other)) {
            print word
        }
    }
}
