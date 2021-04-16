#!/usr/bin/env bash

# -- Purpose --
# gets words that contain three (a)'s and don't have a ('s) ending
# counts most common last two letters of those words and prints top 3 of them

# uses 'cat' because of permissions
cat /usr/share/dict/words | grep -Ei '(\w*a\w*){3}$' | grep -Eo '..$' | sort | uniq -c | sort -n | tail -n3
