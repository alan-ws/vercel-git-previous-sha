#!/bin/bash
# if [[ $VERCEL_GIT_PREVIOUS_SHA == 80f78bed0f8211600a7d5660a9c4cfa839ab984e ]]; then
#     echo "we did not cancel the deployment"
#     echo "because SHA 80f78bed0f8211600a7d5660a9c4cfa839ab984e is equal to" $VERCEL_GIT_PREVIOUS_SHA
#     exit 1
# else
#     echo "we have cancelled the deployment"
#     echo "because SHA 80f78bed0f8211600a7d5660a9c4cfa839ab984e is not equal to" $VERCEL_GIT_PREVIOUS_SHA
#     exit 0
# fi

regex_pattern="Merge branch (.+)"
if [[ $VERCEL_GIT_COMMIT_MESSAGE =~ $regex_pattern ]]; then
    matched_text="${BASH_REMATCH[1]}"
    echo "Commit message matches the pattern 'Merge branch $matched_text'"
    exit 1
else
    echo "we have cancelled the deployment"
    exit 0
fi
