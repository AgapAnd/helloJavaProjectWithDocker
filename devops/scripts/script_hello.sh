#!/bin/sh
echo Docker step 1 - building project with Maven...
#
echo $(mvn -q -f /mnt/application/pom.xml clean package)
#
#
echo Docker step 2 - running project with jdk...
#
echo "\n" $(java -jar /mnt/application/target/hello-app-1.0-SNAPSHOT.jar) "\n"