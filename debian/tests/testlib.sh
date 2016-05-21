# vim:set sw=4 sts=4 et ft=sh:

# is GOT EXPECTED
# Assert that GOT == EXPECTED.
# (Inspired by Perl's Test::More)
is () {
    if [ "x$1" = "x$2" ]; then
        return 0
    else
        printf "# got:      %q\n" "$1"
        printf "# expected: %q\n" "$2"
        return 1
    fi
}

# like GOT EREGEX
# Assert that GOT matches EREGEX.
# (Inspired by Perl's Test::More)
like () {
    if [[ $1 =~ $2 ]]; then
        return 0
    else
        printf "# got:              %q\n" "$1"
        printf "# should match ERE: %q\n" "$2"
        return 1
    fi
}

# unlike GOT EREGEX
# Assert that GOT matches EREGEX.
# (Inspired by Perl's Test::More)
unlike () {
    if [[ $1 =~ $2 ]]; then
        printf "# got:                  %q\n" "$1"
        printf "# should not match ERE: %q\n" "$2"
        return 1
    else
        return 0
    fi
}
