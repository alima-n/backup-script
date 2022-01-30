#!/bin/bash

DIRECTORY=$1
FILENAME=$3
[[ $2 != 'none' ]] && COMPRESSION=--$2 || COMPRESSION=''

echo "Starting backup of $DIRECTORY $(date)"

tar -c $COMPRESSION --file=$FILENAME -P $DIRECTORY > /dev/null 2> error.log

echo "Backup completed $(date)"