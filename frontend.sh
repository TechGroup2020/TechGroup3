#!/bin/bash
docker stop Frontendcont       
docker rm Frontendcont          
docker build -t frontendimg .
docker run -i --name Frontendcont --network=contnetwork --ip 192.168.10.4  -p 5050:5050  frontendimg
docker run -it --name Frontendcont frontendimg /bin/bash
docker start Frontendcont
docker exec Frontendcont ./startup.sh
