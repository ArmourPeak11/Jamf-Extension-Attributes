#!/bin/bash

# This EA will write the Datto File Protection TeamKey to the com.datto.dfp.teamkey file.
# This file is not a .plist even though it is stored in the Preferences folders. It is just a flat text file
# Generate a TeamKey for the Team in the DFP Admin console.
# We are bending a rule with this EA writing a file locally, but is more efficient that writing a policy.

TEAMKEY=""

echo "$TEAMKEY" > /Library/Preferences/com.datto.dfp.teamkey

echo "<result>$TEAMKEY</result>"

exit 0