#!/bin/bash
#echo "enter your password"
#read password
# set a counting variable, if they answer not right, they only get two more tries
COUNT=1
# read the answer, if they answer not right, loop until COUNT=3, then exit with an error
while [ $COUNT -le 3 ]; do
   
   echo "enter your password"
read password
   
    if [[ "$password" = "kln" ]]; then
    echo "you got access"
    exit 0
    else
    COUNT=$[ COUNT + 1 ]
    echo "you have $COUNT more attempt remaining"

        if [[ $COUNT < 3 ]]; then
        echo "maximum limit $COUNT reached try agin"
        fi
    fi 
done
# if we got here, then they unsuccessfully tested their keyboard, send them to support desk
echo ""
echo "I am sorry, it appears you crossed the limit $COUNT tries"
echo ""