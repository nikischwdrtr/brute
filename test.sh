#!/bin/bash

for i in {0000..9999}; do
    echo $((10#$i + 1))
    sleep 0.5
    # if [[ $i != 1036 ]]; then
    #     if [[ $i == 5 ]]; then
    #         echo "sleep+$i"
    #         sleep 2
    #     elif [[ $i == 11 ]]; then
    #         echo "sleep+$i"
    #         sleep 2
    #     elif ( [[ $i != 5 ]] || [[ $i != 11 ]] ) && ( [[ $i -lt 11 ]] || [[ $i -eq 11 ]] ); then
    #         echo "input+$i"
    #         sleep 2
    #     elif ( [[ $i != 5 ]] || [[ $i != 11 ]] ) && [[ $i -gt 11 ]]; then
    #         echo "input+$i"
    #         echo "sleep+$i"
    #         sleep 2
    #     fi
    # fi
done


# 5
# 10
# 11
# 12