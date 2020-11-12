#!/bin/bash

echo

./clean.sh

echo
echo "Rebuilding package list..."
echo "--------------------------"

rm -f Packages*
dpkg-scanpackages -m ./debs > Packages
bzip2 -k Packages
dpkg-scanpackages -m ./debs > Packages

echo "--------------------------"
echo "Done."
echo
