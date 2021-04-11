#!/usr/bin/env bash

savedPATH=""

marco () {
echo "Current directory has been saved."
savedPATH=$(pwd)
}

polo () {
echo "Returning to the saved directory."
cd "$savedPATH" || return
}