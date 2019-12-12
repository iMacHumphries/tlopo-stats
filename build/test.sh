#!/bin/sh

docker image build -t tlopostats -f Dockerfile ..
docker run --rm -it --net host -entrypoint=/bin/sh tlopostats /app/build/entrypoint_test.sh $1
