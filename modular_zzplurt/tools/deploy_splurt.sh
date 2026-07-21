#!/bin/bash

# This script will deploy our modular icon assets so iconforge can use them in spritesheet generation
# This includes modular_zzplurt/icons and greyscale json configs

directories_splurt=( $(find modular_zzplurt/ -type d -name "icons") )

mkdir -p \
    $1/modular_zzplurt/code/datums/greyscale/json_configs

cp -r modular_zzplurt/code/datums/greyscale/json_configs/* $1/modular_zzplurt/code/datums/greyscale/json_configs/

for icondir in ${directories_splurt[@]}
do
    mkdir -p $1/$icondir
	cp -r $icondir/* $1/$icondir/
done
