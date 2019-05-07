#!/bin/sh

version_full=$(chromium --version | awk '{print $2}')
version=${version_full:0:4}

extension_id=$(echo $1 | awk -F / '{print $NF}')

url="https://clients2.google.com/service/update2/crx?response=redirect&acceptformat=crx2,crx3&prodversion=${version}&x=id%3D${extension_id}%26installsource%3Dondemand%26uc"

chromium $url > /dev/null 2>&1
