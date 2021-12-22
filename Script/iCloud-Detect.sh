#!/bin/bash


CURRENT_USER=$(ls -l /dev/console | awk '{print $3}')

if [ -f /Users/$CURRENT_USER/Library/Preferences/MobileMeAccounts.plist ]; then

	STATUS=$(defaults read /Users/$CURRENT_USER/Library/Preferences/MobileMeAccounts.plist | awk '/LoggedIn/{print $NF}')
    
    if [ "$STATUS" == "1;" ]; then
        echo "<result>Yes</result>"
    else
        echo "<result>No</result>"
    fi
else
    echo "<result>No</result>"
fi
