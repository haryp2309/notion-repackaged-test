#
# This file should only contain variables neccessary for notion-repackaged builds
# To bring these variables to your shell, run "source notion-repackaged.sh"
#

# Version of the original Notion App installer to repackage
export NOTION_VERSION=2.0.40
#export NOTION_VERSION=2.0.18

# Revision of the current version
export NOTION_REPACKAGED_REVISION=vanilla

# The md5sum hash of the downloaded .exe for the installer
export NOTION_DOWNLOAD_HASH=69c548bc93700174f9e5cadef2ba26db
#export NOTION_DOWNLOAD_HASH=31bb8b9d547cb5385b9f04017214a206

# The commit of notion-enhancer/desktop to target
export NOTION_ENHANCER_DESKTOP_COMMIT=832db26d2e6a247d9e76847b2de50435fa7c40d2
