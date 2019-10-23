#!/usr/bin/env bash

# The following comments should help you get started:
# - Bash is flexible. You may use functions or write a "raw" script.
#
# - Complex code can be made easier to read by breaking it up
#   into functions, however this is sometimes overkill in bash.
#
# - You can find links about good style and other resources
#   for Bash in './README.md'. It came with this exercise.
#
#   Example:
#   # other functions here
#   # ...
#   # ...
#
#   main () {
#     # your main function code here
#   }
#
#   # call main with all of the positional arguments
#   main "$@"
#
# *** PLEASE REMOVE THESE COMMENTS BEFORE SUBMITTING YOUR SOLUTION ***

main () {
    if [ $# -eq 1 ]
then
    echo "$(getFactor $1)"
    exit 0
else
    echo "Usage: ./raindrops.sh number"
    exit 1
fi
}

getFactor () {
    factorResult=$(echo "")
    case $1 in
    *"3"*)
        factorResult=$factorResult"Pling"
        ;;
    *"5"*)
        factorResult=$factorResult"Plang"
        ;;
    *"7"*)
        factorResult=$factorResult"Plong"
        ;;
    esac
    if [$factorResult == ""]
    then
        exit $1
    else
        exit $factorResult
    fi
}

main "$@"