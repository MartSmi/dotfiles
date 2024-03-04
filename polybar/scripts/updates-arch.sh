#!/usr/bin/env bash

# Arch updates includes ruby gem updates as well (little did you know, huh?)
#arch_updates=$(checkupdates 2>&1)
#arch_updates=$(echo "$arch_updates" | wc -l)
arch_updates=$(checkupdates 2>&1 | wc -l)
aur_updates=$(yay --aur -Qu 2>/dev/null | wc -l)
updates=$((arch_updates + aur_updates))
echo "$updates"
