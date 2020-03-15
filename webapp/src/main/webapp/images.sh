#!bin/bash

#Description: script to clean up images
#Author: Raoul T
#Date: March 2020


for i in $(docker images | awk '{print$3}');
do
docker rmi -f ${i}
done

