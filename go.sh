#!/bin/bash

mkdir -p mut

docker build -t wwebs:latest .

docker run --init --rm -it \
	--env "TZ=$TZ" \
	--volume $(realpath ./wsrc):/wsrc:ro \
	--volume $(realpath ./mut):/mut:rw \
	-p 8000:80 \
	wwebs:latest