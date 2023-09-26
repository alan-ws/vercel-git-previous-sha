#!/bin/bash
if [[ $VERCEL_GIT_PREVIOUS_SHA == d151180db0437b1f816153446ee4e1473071d3f6 ]]; then
    echo YES
    exit 1
else
    echo NO
    exit 0
fi
