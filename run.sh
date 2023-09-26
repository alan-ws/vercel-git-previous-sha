#!/bin/bash
if [[ $VERCEL_GIT_PREVIOUS_SHA == b6aa87a5fda07e460ec8243060b44394148c1695 ]]; then
    echo YES
    exit 0
else
    echo NO
    exit 1
fi
