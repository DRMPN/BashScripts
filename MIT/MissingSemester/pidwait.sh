#!/usr/bin/env bash

pidwait () {
while kill -s 0 "$1"
do
	echo "Process $1 is still running ..."
	sleep 1
done
echo "Process $1 is done."
}
