#!/bin/bash

kubectl delete serviceaccount wso2svcacct
kubectl delete deployments,services,PersistentVolume,PersistentVolumeClaim,Ingress,configmaps -l pattern=wso2apim-pattern-1
