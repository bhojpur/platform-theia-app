#!/bin/bash

mkdir -p plugins
cat ./node_modules/@bhojpur/bhojpur-protocol/data/builtin-theia-plugins.json | jq -r '.[] | "wget -Oplugins/\(.loc) \(.url)"' | sh
cp ./node_modules/@bhojpur/bhojpur-protocol/data/builtin-theia-plugins.json plugins/plugins.json
