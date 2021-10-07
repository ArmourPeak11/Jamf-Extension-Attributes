#!/bin/bash


# Write the Sophos installer variables to a file.

###############################
CUSTOMERTOKEN="c1138b35-06c8-443e-96b2-f9b95d098a58"
MGMTSERVER="mcs2-cloudstation-us-east-2.prod.hydra.sophos.com"
PRODUCTS="antivirus intercept"
###############################

# The config file our postinstall script reads from
OUTFILE=/Library/Preferences/com.armourpeak.sophos.install.plist

defaults write $OUTFILE CustomerToken "$CUSTOMERTOKEN"
defaults write $OUTFILE MgmtServer "$MGMTSERVER"
defaults write $OUTFILE Products "$PRODUCTS"

echo "<result>Values Set</result>"

exit 0