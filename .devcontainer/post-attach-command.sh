#!/bin/bash

name=command_ran
if [[ -e $name.ext || -L $name.ext ]] ; then
    i=0
    while [[ -e $name-$i.ext || -L $name-$i.ext ]] ; do
        let i++
    done
    name=$name-$i
fi
touch -- "$name".ext
