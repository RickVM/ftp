#!/bin/sh -l

echo "Hello $1"
time=$(date)
echo "::set-output name=time::$INPUT_HOST"

run: lftp ftp://$INPUT_USERNAME@$INPUT_HOST -u $INPUT_USERNAME,$INPUT_PASSWORD -e "set ssl:verify-certificate false; mirror --reverse --verbose ./dist .;" bye