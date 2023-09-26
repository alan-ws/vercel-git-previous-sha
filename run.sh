#!/bin/bash
if [[ $VERCEL_GIT_PREVIOUS_SHA == ad8f389b43283b687180d98d613810d5418121ea ]]; then
    echo "we have cancelled the deployment"
    echo "because SHA ad8f389b43283b687180d98d613810d5418121ea is equal to" $VERCEL_GIT_PREVIOUS_SHA
    exit 0
else
    echo "we did not cancel the deployment"
    echo "because SHA ad8f389b43283b687180d98d613810d5418121ea is equal to" $VERCEL_GIT_PREVIOUS_SHA
    exit 1
fi
