#!/bin/bash

VERSION=1.13
IMAGE=singularity-ncdu-"$VERSION".sif
DEFINITION=Singularity

if [ -f $IMAGE ]; then
	rm -fv $IMAGE
fi

sudo singularity build $IMAGE $DEFINITION
