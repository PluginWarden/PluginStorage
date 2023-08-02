#!/bin/bash

echo "# PluginStorage" > README.md
echo "Supported Plugins: $(ls */*/.version | wc -l | xargs)" >> README.md
echo "" >> README.md
echo "## Currently supported plugins:" >> README.md
echo "" >> README.md

IFS=$'\n'

for plugin in $(ls */* | grep -e ":" | sort); do
    pluginName="${plugin#??}"
    echo "- ${pluginName%?}" >> README.md
done
