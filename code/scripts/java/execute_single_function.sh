#!/usr/bin/env bash

#SBATCH --job-name execute_function
#SBATCH -N 1
#SBATCH -p opteron
# Use modules to set the software environment

if [ -z "$3" ]
then
    echo "Run: sh scripts/java/execute_single_function.sh 'Dataset' 'file_path' 'function_name' ... "
    exit 1
fi


# java -jar target/code-1.0-SNAPSHOT-jar-with-dependencies.jar execute_single $1 $2 $3
cd ~/Raise/ProgramRepair/CodeSeer/code/target/classes
#java -cp "/Users/panzer/Raise/ProgramRepair/CodeSeer/code/target/lib/*" edu.ncsu.executors.MethodExecutor
#java -classpath ~/Raise/ProgramRepair/CodeSeer/code/target/lib/*:. edu.ncsu.executors.MethodExecutor
java -classpath ~/Raise/ProgramRepair/CodeSeer/code/target/lib/*:. edu.ncsu.Main execute_single $1 $2 $3