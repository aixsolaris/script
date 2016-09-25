#!/bin/bash

touch /root/test 2> /dev/null

if [ $? -eq 0 ]
then
  echo "Successfully created file"
else
  echo "Could not create file" >&2
fi
