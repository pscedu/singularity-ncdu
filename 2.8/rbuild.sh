#!/bin/bash

# Copyright © 2021-2025 Pittsburgh Supercomputing Center.
# All Rights Reserved.

IMAGE=singularity-ncdu-2.8.sif
DEFINITION=Singularity

if [ -f $IMAGE ]; then
	rm -fv $IMAGE
fi

singularity build --remote $IMAGE $DEFINITION

if [ -f $IMAGE ]; then
	exit 0
else
	exit 1
fi
