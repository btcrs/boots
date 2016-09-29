#!/usr/bin/env bash
sudo -v
while true; do sudo -n true; sleep 60; kill -0 "$$" || exit; done 2>/dev/null &

###############################################################################
# Kill affected applications                                                  #
###############################################################################

for file in ./settings/* 
do
    sh $file
done

for app in "Activity Monitor" "Address Book" "Calendar" "Contacts" "cfprefsd" \
    "Dock" "Finder" "Mail" "Messages" "Safari" "SizeUp" "SystemUIServer" \
    "Transmission" "Twitter" "iCal"; do
    killall "${app}" > /dev/null 2>&1
done
echo "Done. Note that some of these changes require a logout/restart to take effect."
