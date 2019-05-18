#!/bin/bash
# Muhammad Arif

function ProgressBar {
    let _progress=(${1}*100/${2}*100)/100
    let _done=(${_progress}*4)/10
    let _left=40-$_done

    _fill=$(printf "%${_done}s")
    _empty=$(printf "%${_left}s")

printf "\r\033[91mTunggu Mas :\033[92m [\033[93m${_fill// /\#}${_empty// /<}\033[92m]\033[91m ${_progress}%%"

}

# Variable
_start=1

# jancok
_end=100

# PoC
for number in $(seq ${_start} ${_end})
do
    sleep 0.1
    ProgressBar ${number} ${_end}
done
printf '\n\033[95mDone Cok !!!\n'

