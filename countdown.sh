#!/bin/bash

for ((i=1; i<=120; i++))
do
    echo $i
    sleep 1
done

exit 1  # Exit with a non-zero exit code
