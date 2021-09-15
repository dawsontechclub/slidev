#!/bin/bash

function red { printf "\033[0;31m$@\033[0m\n";}
function green { printf "\033[0;32m$@\033[0m\n";}
function cyan { printf "\033[0;36m$@\033[0m\n";}
function yellow { printf "\033[0;33m$@\033[0m\n";}

PACKAGE=''

package () {
    PACKAGE=$1
    echo "📦 package $PACKAGE"
}

compile () {
    local NAME=$1
    local BASE=$PACKAGE/$NAME
    local SRC=packages/$PACKAGE/$1.md
    local DST=docs/$BASE
    echo "🔨 building $(cyan $SRC) -> $(yellow $DST)"
    npx slidev build $SRC -o $DST --base "$BASE" 1> /dev/null
    echo "👍 built $(cyan $SRC) -> $(yellow $DST)"
}

cname() {
    echo "slidev.dawsontech.club" > docs/CNAME
}

clean() {
    echo "🧹 removing old build"
    rm docs/* -rf
}

clean
package hi2lo
compile intro
compile bits
cname