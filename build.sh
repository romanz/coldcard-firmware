#!/bin/bash
set -eux
killall coldcard-mpy || true
cd `dirname $0`

cd ./unix/
make
./simulator.py &

sleep 1
while ! ( ckcc -x version ); do sleep 1; done

cd ../testing/
py.test -vvs $*
