# Scripts

This directory contains small AWK utilities for processing word lists.

## merge-wordlists.awk

Concatenate multiple files and remove duplicate lines:

```sh
awk -f merge-wordlists.awk file1.txt file2.txt > merged.txt
```

## filter-length.awk

Filter words by length. Pass the minimum and maximum word lengths using
`-v min=<min>` and `-v max=<max>`:

```sh
awk -v min=5 -v max=8 -f filter-length.awk words.txt > filtered.txt
```

## normalize-case.awk

Convert all words in the input to lowercase:

```sh
awk -f normalize-case.awk words.txt > lower.txt
```

## set-union.awk

Produce the union of multiple word lists while removing duplicates:

```sh
awk -f set-union.awk list1.txt list2.txt > union.txt
```

## set-intersection.awk

Print words common to all provided files:

```sh
awk -f set-intersection.awk list1.txt list2.txt > intersection.txt
```

## set-difference.awk

Given a first file and one or more additional files, output words that
appear only in the first file:

```sh
awk -f set-difference.awk base.txt other.txt > difference.txt
```

