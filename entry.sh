#!/bin/bash

DATADIR=/data

mkdir -p $DATADIR

if [ ! -d $DATADIR ]; then
        echo "The data directory does not exist! Please add it as a volume."
        exit 1
fi

echo "Starting minidlna..."
minidlnad -d -f /etc/minidlna.conf
