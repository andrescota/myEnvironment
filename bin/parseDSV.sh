#!/usr/bin/env bash

# Andre Augusto Giannotti Scota (https://sites.google.com/view/a2gs/)

# Script exit if a command fails:
#set -e
#OR set -o errexit

# Script exit if a referenced variable is not declared:
#set -u
#OR set -o errexit

# If one command in a pipeline fails, its exit code will be returned as the result of the whole pipeline:
#set -o pipefail

# Activate tracing:
#set -x

function parseDSV()
{
	if [ "$#" -ne 2 ];
	then
		echo -e "Parameters erro.\nUsage:\n\t$FUNCNAME [FILE_NAME] [SEPARATOR]"
		return
	fi

	if [ ! -f "$1" ];
	then
		echo "File $1 not found!"
		return
	fi

	awk -v SEP="$2" 'BEGIN{
		FS=SEP;
		print "File: [" ARGV[1] "] - Separator: [" FS "]";
	}
	{
		i = 1;
		print "Record: " NR;

		for(i = 1; i <= NF; i++){
			print "\t" i ": [" $i "]";
		}
	}
	END{
	}' $1
}
