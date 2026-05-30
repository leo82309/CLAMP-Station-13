#!/bin/bash

# This script will deploy our modular icon assets so iconforge can use them in spritesheet generation
# This includes modular_zubbers/icons, modular_zubbers/master_files/icons, modular_skyrat/master_files/icons
# and a dynamically generated list of every module in modular_skyrat/modules that contains an icons folder
# If there ever comes a day where the modular_skyrat folder is organized so all the sprites are together
# instead of spread across modules, shed a tear of relief and remove the relevant code from here
directories_skyrat=( $(find modular_skyrat/ -type d -name "icons") )
directories_zubbers=( $(find modular_zubbers/ -type d -name "icons") )

mkdir -p \
	$1/modular_skyrat/modules/aesthetics \
	$1/modular_skyrat/modules/GAGS/json_configs \
	$1/modular_skyrat/modules/GAGS/nsfw/json_configs \
	$1/modular_zubbers/code/datums/greyscale/json_configs

cp -r modular_skyrat/modules/aesthetics/* $1/modular_skyrat/modules/aesthetics/ # the aesthetics module doesnt use an icon folder but it does contain DMIs. God has abandoned us
cp -r modular_skyrat/modules/GAGS/json_configs/* $1/modular_skyrat/modules/GAGS/json_configs/
cp -r modular_skyrat/modules/GAGS/nsfw/json_configs/* $1/modular_skyrat/modules/GAGS/nsfw/json_configs/
cp -r modular_zubbers/code/datums/greyscale/json_configs/* $1/modular_zubbers/code/datums/greyscale/json_configs/

for icondir in ${directories_skyrat[@]}
do
    mkdir -p $1/$icondir
	cp -r $icondir/* $1/$icondir/
done

for icondir in ${directories_zubbers[@]}
do
    mkdir -p $1/$icondir
	cp -r $icondir/* $1/$icondir/
done
