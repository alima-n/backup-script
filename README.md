# backup-script
Graded assignment (DevOps course, MDS 2020)

1. Run in the command line `./backup.sh {DIRECTORY} {COMPRESSION_ALGO} {OUTPUT_FILENAME}`
  - DIRECTORY is a directory to back up,
  - COMPRESSION_ALGO is a preferred compression type (or '**none**' if you need a backup without compression),
  - OUTPUT_FILENAME is a desired output filename.

3. You will be suggested to enter an encryption password.

4. To restore the encrypted backup run `openssl enc -d -aes256 -in {OUTPUT_FILENAME} | tar xz -C {DIRECTORY}`

  - OUTPUT_FILENAME is a name of the encrypted backup;
  - DIRECTORY is a directory in which you are going to restore the backup.
