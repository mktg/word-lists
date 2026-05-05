#!/usr/bin/awk -f
FNR==1 {
    file_count++
    delete seen_in_file
}
{
    if (!seen_in_file[$0]++) {
        count[$0]++
    }
}
END {
    for (word in count) {
        if (count[word] == file_count) {
            print word
        }
    }
}
