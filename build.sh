#!/bin/bash -e

cp /c/Users/Zach/Documents/workspace-sts-3.6.0.RELEASE/docker-rest/target/docker-rest.jar .

docker build -t zachariahyoung/docker-rest .
