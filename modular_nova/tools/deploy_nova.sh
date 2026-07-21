#!/bin/bash

# This script will deploy our Nova-specific modular icon assets so iconforge can use them in spritesheet generation
# This includes modular_nova/icons

directories_nova=( $(find modular_nova/ -type d -name "icons" 2>/dev/null) )

for icondir in ${directories_nova[@]}
do
    mkdir -p $1/$icondir
	cp -r $icondir/* $1/$icondir/
done
