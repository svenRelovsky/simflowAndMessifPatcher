#!/bin/sh
#author Sven Relovsky
#03.01.2016

unzip repository-1062.zip
mv core/* .
cp -nr distributed/* .
cp -nr impl/* .
rm -r core
rm -r distributed/
rm -r impl

tar xzf messifPatch.tar.gz
cp -nr messifPatch/* .
rm -r messifPatch
#messif is now containing DBSCAN

#compile
javac *.java  messif/*/*.java messif/*/*/*.java messif/*/*/*/*.java

rm *.java  messif/*/*.java messif/*/*/*.java messif/*/*/*/*.java

printf "Manifest-Version: 1.0\nAnt-Version: Apache Ant 1.8.3\nCreated-By: 1.7.0_05-b06 (Oracle Corporation)\nMain-Class: DBSCAN\nClass-Path: ./lib/\n" > MANIFEST.MF

jar cfvm DBSCAN.jar MANIFEST.MF *.class messif
rm -r messif
rm *.class
rm MANIFEST.MF
