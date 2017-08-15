#!/bin/bash
CMD=$@
sudo docker build -t zimtools .
sudo docker run -it -v $(pwd)/mount:/mount zimtools -c "/openzim/zimlib/src/tools/zimdump $CMD"