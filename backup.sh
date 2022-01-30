#!/bin/bash

DIRECTORY=$1
[[ $2 != 'none' ]] && COMPRESSION=--$2 || COMPRESSION=''
FILENAME=$3

echo "Starting backup of $DIRECTORY $(date)"

{
  tar -c $COMPRESSION -P $DIRECTORY | openssl enc -e -aes256 -out $FILENAME
} > /dev/null 2> error.log

echo "Backup completed $(date)"