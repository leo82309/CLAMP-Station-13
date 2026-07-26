#!/bin/bash

mkdir -p \
    $1/icons \
    $1/tgui/public \

cp tgstation.dmb tgstation.rsc $1/
if [ -d "icons" ]; then cp -r icons/. $1/icons/; fi
if [ -d "tgui/public" ]; then cp -r tgui/public/. $1/tgui/public/; fi

# BUBBER EDIT ADDITION BEGIN - Call our deploy too
source modular_zubbers/tools/deploy_bubber.sh
# BUBBER EDIT ADDITION END - Call our deploy too
