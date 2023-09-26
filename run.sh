#!/bin/bash
if [[ $VERCEL_GIT_PREVIOUS_SHA == cc861914ca286637ac355741630b22544f382b06 ]]; then
    echo YES
    exit 1
else
    echo NO
    exit 0
fi
