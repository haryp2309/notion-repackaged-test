#! /bin/bash
source notion-repackaged.sh &&
./scripts/download-exe.sh &&
./scripts/extract-src.sh &&
NOTION_REPACKAGED_EDITION=vanilla ./scripts/build-locally.sh &&
exit 0