#!/bin/bash
if [[ $VERCEL_GIT_PREVIOUS_SHA == 77612ddfd351a51c99c7783f19d2b6c3df5afe81 ]]; then
    echo YES
    exit 0
else
    echo NO
    exit 1
fi
