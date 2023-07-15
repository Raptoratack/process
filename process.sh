#!/bin/bash

proc=$(ps -ef)

function process(){
	proc2=$(ps -ef)
	diff <(echo "$proc") <(echo "$proc2") | grep "[/>/<]" | grep -vE "process|ps|kworker"
	proc=$proc2
}

while true; do
	process
done
