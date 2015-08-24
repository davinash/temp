#!/usr/bin/env bash

BASEDIR=`/usr/bin/dirname $0`
OLDPWD=$PWD
cd $BASEDIR
export BASEDIR=`/usr/bin/dirname $PWD`
cd $OLDPWD

GEODE_HOME=/work/ampool/gemfire-assembly/build/install/apache-geode
NAME=ampool_geode
AMPOOL_EXTRA_CLASSPATH=/work/ampoolFunctions/functions/target/functions-1.0-SNAPSHOT.jar
CACHE_XML_FILE=/work/scripts/cache.xml

cd /work/ampoolFunctions/functions
mvn package

cd $OLDPWD
rm -rf $NAME

$GEODE_HOME/bin/gfsh -e "start server --name=$NAME --mcast-port=41414 --J --server-port=40404  --J=-Dgemfire.start-dev-rest-api=true --J=-Dgemfire.http-service-bind-address=localhost --J=-Dgemfire.http-service-port=8080 --J=-Dgemfire.jmx-manager=true --J=-Dgemfire.jmx-manager-start=true --log-level=debug --classpath=$AMPOOL_EXTRA_CLASSPATH --cache-xml-file=$CACHE_XML_FILE"


