#!/bin/bash

# This script will deploy our Venus-specific modular icon assets so iconforge can use them in spritesheet generation
# This includes modular_zzvenus/icons

directories_venus=( $(find modular_zzvenus/ -type d -name "icons") )

for icondir in ${directories_venus[@]}
do
    mkdir -p $1/$icondir
	cp -r $icondir/* $1/$icondir/
done
