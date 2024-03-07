#!/bin/bash

VID_PATH=$HOME/Videos

if [ -z "$@" ]
then
    ls $VID_PATH
else
    coproc (cvlc $VID_PATH/"$@" & >& /dev/null &)
    exit 0
fi
