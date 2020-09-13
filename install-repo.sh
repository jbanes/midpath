#!/bin/bash

cd dist
cp btclasses.zip btclasses.jar

JARS=`ls *.jar`

for JAR in $JARS
do
 
  ARTIFACT=`echo $JAR | cut -d. -f1`

  mvn org.apache.maven.plugins:maven-install-plugin:3.0.0-M1:install-file  -Dfile=$JAR -DgroupId=io.github.retrofw -DartifactId=$ARTIFACT -Dversion=0.3 -Dpackaging=jar

done

rm -f btclasses.jar
