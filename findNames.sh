#!/usr/bin/env bash

capital=$( grep -e '^[[:upper:]][[:lower:]]' $1 )
echo $capital
