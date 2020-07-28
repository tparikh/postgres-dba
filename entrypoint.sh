#!/bin/bash

set -e

cp /db/* /tmp

cd /tmp

# ls -al

for FILE in `ls -1 *.sh`
do
  chmod u+x $FILE
  ./$FILE
done

# ls -al

# cat create_db.sql

for FILE in `ls -1 *.sql`
do
  psql -f $FILE
done

rm /tmp/*
