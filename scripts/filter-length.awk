#!/usr/bin/awk -f
BEGIN {
    if (min == "") min = 1
    if (max == "") max = 99999
}
{
    len = length($0)
    if (len >= min && len <= max) {
        print
    }
}
