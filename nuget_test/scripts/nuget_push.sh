#!/bin/bash
PROJECT_DIRECTORY=$1
PROJECT_CONFIG=$2
PACKAGE_VERSION=1.0.8
NUPKG=org.partners.cdr.sample.$PACKAGE_VERSION.nupkg
PKG=$PROJECT_DIRECTORY/bin/$PROJECT_CONFIG/$NUPKG
NUGET_REPO=http://pcpgm-scm.dipr.partners.org:8081/nexus/repository/hip-nuget-repo/

cmd1="nuget push $PKG -source $NUGET_REPO"
echo $cmd1
eval $cmd1

cmd2="dotnet new -u org.partners.cdr.sample"
echo $cmd2
eval $cmd2

cmd3="dotnet new -i org.partners.cdr.sample::$PACKAGE_VERSION --nuget-source $NUGET_REPO"
echo $cmd3
eval $cmd3
