#!/bin/sh

#Sven Relovsky - using patch.txt, there should be folder called simflow-0.1 in this directory
#patch.txt created by: diff -Naur simflow-0.1 simflow-0.2 > patch.txt

patch -s -p0 < sim.patch
chmod +x simflow-0.1/outputManager.sh
