#!/bin/bash
/home/pablo/build/mattermost-desktop-5.1.1-linux-x64/mattermost-desktop &
env BAMF_DESKTOP_FILE_HINT=/var/lib/snapd/desktop/applications/telegram-desktop_telegram-desktop.desktop /snap/bin/telegram-desktop -- %u &
#slack &
