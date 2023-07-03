#!/bin/bash

for i in {0000..9999}; do
    if [[ $i != 1036 ]]; then
        if [[ $i == 5 ]]; then
            echo $i
            sleep 2
        elif [[ $i == 10 ]]; then
            echo $i
            sleep 2
        else
            echo -e "hallo"
            sleep 2
        fi
    fi
done


# 5
# 10
# 11
# 12