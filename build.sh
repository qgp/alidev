#!/bin/bash

#ARCHITECTURE=${ARCHITECTURE:-gentoo}

#alibuild/aliBuild -d -a $ARCHITECTURE -j 4 $*
../alibuild/aliBuild -z -w ../sw -d build AliPhysics
