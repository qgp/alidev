#!/bin/bash

OS=${1:-slc5}
EXEC=${2:-/bin/bash}

WORKDIR=/alisw
COMMON_OPTIONS="--rm -it -v `pwd`:${WORKDIR} -w ${WORKDIR} -e XDG_CONFIG_HOME=${WORKDIR}/config"

if [[ ${OS} =~ "slc5" ]]; then
    OPTIONS="${COMMON_OPTIONS} -e ARCHITECTURE=slc5_x86-64 -e MODULEPATH=/${WORKDIR}/sw/MODULES/slc5"
    docker run ${OPTIONS} alisw/slc5-builder ${EXEC}
elif [[ ${OS} =~ "slc6" ]]; then
    docker run ${COMMON_OPTIONS} -e ARCHITECTURE=slc6_x86-64 alisw/slc6-builder ${EXEC}
elif [[ ${OS} =~ "cc7" ]]; then
    docker run ${COMMON_OPTIONS} -e ARCHITECTURE=slc7_x86-64 alisw/slc7-builder ${EXEC}
elif [[ ${OS} =~ "ubuntu1404" ]]; then
    docker run ${COMMON_OPTIONS} -e ARCHITECTURE=ubuntu1404_x86-64 alisw/ubuntu1404-builder ${EXEC}
else
    echo "Unknown OS: <${OS}>"
fi
