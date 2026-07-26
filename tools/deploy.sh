#!/bin/bash

#Run this in the repo root after compiling
#First arg is path to where you want to deploy
#creates a work tree free of everything except what's necessary to run the game

#second arg is working directory if necessary
if [[ $# -eq 2 ]] ; then
  cd $2
fi

mkdir -p \
    $1/_maps \
    $1/code/datums/greyscale/json_configs \
    $1/data/spritesheets \
    $1/icons \
    $1/sound/runtime \
    $1/strings \
    $1/tgui/public \
    $1/tgui/packages/tgfont/dist

if [ -d ".git/logs" ]; then
  mkdir -p $1/.git/logs
  cp -r .git/logs/. $1/.git/logs/
fi

cp tgstation.dmb tgstation.rsc $1/
if [ -d "_maps" ]; then cp -r _maps/. $1/_maps/; fi
if [ -d "code/datums/greyscale/json_configs" ]; then cp -r code/datums/greyscale/json_configs/. $1/code/datums/greyscale/json_configs/; fi
if [ -d "icons" ]; then cp -r icons/. $1/icons/; fi
if [ -d "sound/runtime" ]; then cp -r sound/runtime/. $1/sound/runtime/; fi
if [ -d "strings" ]; then cp -r strings/. $1/strings/; fi
if [ -d "tgui/public" ]; then cp -r tgui/public/. $1/tgui/public/; fi
if [ -d "tgui/packages/tgfont/dist" ]; then cp -r tgui/packages/tgfont/dist/. $1/tgui/packages/tgfont/dist/; fi

#remove .dm files from _maps

#this regrettably doesn't work with windows find
#find $1/_maps -name "*.dm" -type f -delete

#dlls on windows
if [ "$(uname -o)" = "Msys" ]; then
	cp ./*.dll $1/
fi

# BUBBER EDIT ADDITION BEGIN - Call our deploy too
source modular_zubbers/tools/deploy_bubber.sh
# BUBBER EDIT ADDITION END - Call our deploy too

# SPLURT EDIT ADDITION BEGIN - Call our deploy too
source modular_zzplurt/tools/deploy_splurt.sh
# SPLURT EDIT ADDITION END - Call our deploy too

# VENUS EDIT ADDITION BEGIN - Call our deploy too
source modular_zzvenus/tools/deploy_venus.sh
# VENUS EDIT ADDITION END - Call our deploy too

# CLAMP EDIT ADDITION BEGIN - Call our deploy too
if [ -f "modular_clamp/tools/deploy_clamp.sh" ]; then
    source modular_clamp/tools/deploy_clamp.sh
fi
# CLAMP EDIT ADDITION END - Call our deploy too

# NOVA EDIT ADDITION BEGIN - Call our deploy too
if [ -f "modular_nova/tools/deploy_nova.sh" ]; then
    source modular_nova/tools/deploy_nova.sh
fi
# NOVA EDIT ADDITION END - Call our deploy too
