#!/bin/sh



CURRENT_USER=$(ls -l /dev/console | awk '{print $3}')

DOCUMENTS=$(defaults read /Users/$CURRENT_USER/Library/Preferences/com.apple.finder FXICloudDriveDocuments)

DESKTOP=$(defaults read /Users/$CURRENT_USER/Library/Preferences/com.apple.finder FXICloudDriveDesktop)

if [ $DOCUMENTS = 1 ] && [ $DESKTOP = 1 ]; then

echo "<result>Yes</result>"

else

echo "<result>No</result>"

fi