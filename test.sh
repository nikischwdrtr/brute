#!/bin/bash
for (( j=0; j<${#i}; j++ )); do
                adb shell input keyevent $((`echo ${i:$j:1}`+7))
            done