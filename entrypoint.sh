#!/bin/sh -l
echo "Helloa world"
echo "$INPUT_HOST"

run: lftp ftp://$INPUT_USERNAME@$INPUT_HOST -u $INPUT_USERNAME,$INPUT_PASSWORD -e "set ssl:verify-certificate false; mirror --reverse --verbose ./dist .;" bye
