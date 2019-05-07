#!/bin/sh

sudo rsync -av . /usr/bin --exclude=install.sh
