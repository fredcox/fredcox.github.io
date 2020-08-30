#!/bin/bash

echo "Building...."
jekyll build

echo "Updating..."
git add --all
git commit -m "site updated:  $(date)"
git push
