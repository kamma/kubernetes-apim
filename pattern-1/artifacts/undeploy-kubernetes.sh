#!/bin/bash
kubectl delete serviceaccount wso2svcacct
kubectl delete deployments,services,PersistentVolume,PersistentVolumeClaim -l pattern=wso2apim-pattern-1
