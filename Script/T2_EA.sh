#!/bin/zsh

###Checks if a Mac equipped with a T2 security chip.

iBridge="$(/usr/sbin/system_profiler SPiBridgeDataType | awk -F': ' '/Model Name:/{print $NF}')"
if [[ $iBridge = "Apple T2 Security Chip" ]]
then
echo "<result>Yes</result>"
else
echo "<result>No</result>"
fi

exit 0