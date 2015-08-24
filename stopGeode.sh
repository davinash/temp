#!/usr/bin/env bash

BASEDIR=`/usr/bin/dirname $0`
OLDPWD=$PWD
cd $BASEDIR
export BASEDIR=`/usr/bin/dirname $PWD`
cd $OLDPWD

GEODE_HOME=/work/ampool/gemfire-assembly/build/install/apache-geode
NAME=ampool_geode
AMPOOL_EXTRA_CLASSPATH=/work/scripts/ampoolFunctions.jar
CACHE_XML_FILE=/work/scripts/cache.xml


$GEODE_HOME/bin/gfsh -e "connect --jmx-manager=localhost[1099]" -e "stop server --name=$NAME"

