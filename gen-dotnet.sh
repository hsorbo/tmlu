#!/bin/zsh
set -e
#dotnet tool install --global dotnet-xscgen --version 2.1.1162
NS="Ariane.SaveFile.Contract"
mkdir $NS
pushd $NS
dotnet new classlib
rm -v *.cs
xscgen -n "=$NS" ../tmlu.xsd
dotnet pack /p:Version=0.0.1-preview1
