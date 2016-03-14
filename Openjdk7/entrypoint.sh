#!/bin/sh
exec 2>&1
set -e

# Exporting the JAVA Variable
export JAVA=/usr/lib/jvm/java-7-openjdk-amd64

#  Starting the java process
exec    /usr/bin/java
