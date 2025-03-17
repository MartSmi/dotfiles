#!/bin/bash

if [ -z "$@" ]
then
    exit 0
else
    coproc (qutebrowser "$@")
    exit 0
fi

