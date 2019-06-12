#!/bin/bash
oc new-project minecraft
oc new-build https://github.com/jottofar/docker_minecraft
oc apply -f pvc.yml
oc apply -f deployment.yaml
oc apply -f nodePort.yml
