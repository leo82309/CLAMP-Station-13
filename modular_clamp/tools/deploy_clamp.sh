#!/bin/bash

# This script will deploy our Clamp-specific modular icon assets so iconforge can use them in spritesheet generation
# This includes modular_clamp/icons

directories_clamp=( $(find modular_clamp/ -type d -name "icons") )

for icondir in ${directories_clamp[@]}
do
    mkdir -p $1/$icondir
	cp -r $icondir/* $1/$icondir/
done
