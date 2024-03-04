#!/usr/bin/env bash
df -h /home | grep -vE '^Filesystem|tmpfs|cdrom' | awk '{ print $4 }'
