#!/bin/sh

CHROMIUM_APP=chromium-browser
CHROMIUM_ROOT=/usr/local/chromium-browser
CHROME_DESKTOP=chromium-browser.desktop
CHROME_WRAPPER="$CHROMIUM_ROOT/$CHROMIUM_APP"
PATH="$CHROMIUM_ROOT:$PATH"
CHROME_VERSION_EXTRA="for Tiny Core Linux"

if [ "X$LD_LIBRARY_PATH" = "X" ]; then
  LD_LIBRARY_PATH="$CHROMIUM_ROOT"
else
  LD_LIBRARY_PATH="$CHROMIUM_ROOT:$LD_LIBRARY_PATH"
fi

export PATH LD_LIBRARY_PATH CHROME_WRAPPER CHROME_DESKTOP CHROME_VERSION_EXTRA

exec $CHROMIUM_ROOT/$CHROMIUM_APP "$@"

