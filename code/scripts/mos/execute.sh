#!/usr/bin/env bash

#SBATCH --job-name execute
#SBATCH -N 1
#SBATCH -p opteron
# Use modules to set the software environment


java -Xmx32g -jar target/code-1.0-SNAPSHOT-jar-with-dependencies.jar mos execute