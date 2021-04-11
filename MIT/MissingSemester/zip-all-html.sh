#!/usr/bin/env bash

echo "Creating an archive from all HTMLs in the current directory."

find . -name "*.html" | xargs -d '\n' tar czf zippedHTML.tar.gz

echo "Done."