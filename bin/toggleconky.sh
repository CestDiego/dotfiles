#! /bin/bash

# Make sure the following file exists.
FILE='/home/io/.conkytoggle'

[[ $(< $FILE) -eq 0 ]] && echo -n 1 > $FILE || echo -n 0 > $FILE
