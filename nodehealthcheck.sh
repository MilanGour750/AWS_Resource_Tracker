#!/bin/bash

#############################################
# Author: Milan Gour
# Date: 10/11/2024
# Purpose: Learning Scripting
# Version: 1.0.00
# This script outputs the health of the node by displaying disk usage, CPU count, memory status, and specific process IDs.
#############################################

# Enable debugging mode to show each command being executed
set -x 

# Exit immediately if any command returns a non-zero status
# Note: This only catches errors in simple commands or the last command in a pipeline
set -e 

# Enable `pipefail` to ensure that if any command in a pipeline fails, the entire pipeline fails
# For example, if `cmd1 | cmd2` fails in `cmd1`, the script will exit
set -o pipefail

# Display disk usage in a human-readable format
df -h

# Show the number of processing units (CPU cores) available
nproc

# Display free and used memory in the system
free

# List all processes and filter for those containing "amazon"
# The command uses `awk` to print the second field, typically the process ID (PID)
# Note: If you only want the PID, you could add `grep -v grep` to avoid including the grep process itself
ps -ef | grep amazon | grep -v grep | awk '{print $2}'

