#!/bin/bash
if [[ $VERCEL_GIT_PREVIOUS_SHA == 2a5ca26555ca1f4e5e2172cc8ee1045382f1b428 ]]; then
    echo "we have cancelled the deployment"
    echo "because SHA 2a5ca26555ca1f4e5e2172cc8ee1045382f1b428 is equal to" $VERCEL_GIT_PREVIOUS_SHA
    exit 0
else
    echo "we did not cancel the deployment"
    echo "because SHA 2a5ca26555ca1f4e5e2172cc8ee1045382f1b428 is not equal to" $VERCEL_GIT_PREVIOUS_SHA
    exit 1
fi
