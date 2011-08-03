#!/bin/bash

version=`getconf LONG_BIT`

if [ $version -eq "64" ] || [ $version -eq "32" ]
then
    url="http://sockit.github.com/downloads/npSockIt${version}.so"
    mkdir -p ~/.mozilla/plugins
    rm ~/.mozilla/plugins/npSockIt*.so
    wget $url
    mv "npSockIt${version}.so" ~/.mozilla/plugins/
    echo "SockIt plugin successfully installed!"
else
    echo "Sorry, your platform is not yet supported (or never will be)." 
fi
