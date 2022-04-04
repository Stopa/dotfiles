#!/bin/sh

echo "Cloning repositories..."

WORK=$HOME/work/snackable
OS=$HOME/work/os
FREELANCE=$HOME/work/freelance

# Work
git clone git@github.com:snackable/portal.git $WORK/portal
git clone git@github.com:snackable/portal-api.git $WORK/portal-api
git clone git@github.com:snackable/snackable-web.git $WORK/snackable-web
