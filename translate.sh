#!/bin/bash

# Translated languages (update these also to qlc.pro)
languages="de_DE es_ES fi_FI fr_FR it_IT"

# Compile all files for the given language into one common qlc_<lang>.qm file
function compile {
    echo Processing $1
    lrelease -silent `find . -name *_$1.ts` -qm qlc_$1.qm
}

# Compile all translated languages present in $languages
for lang in $languages; do
    compile $lang
done
