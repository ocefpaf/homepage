#!/bin/bash

rsync --verbose \
      --recursive \
      --compress \
      --progress \
      --partial \
      --delete \
      --cvs-exclude \
      static/ output/

ghp-import -p ./output
