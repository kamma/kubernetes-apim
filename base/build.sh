#!/bin/bash

# builds the base images - apim-base, analytics, rsync, sshd

this_dir=$(cd "$(dirname "${BASH_SOURCE[0]}")" && pwd)
rsync_dir=$(cd "${this_dir}/rsync"; pwd)
sshd_dir=$(cd "${this_dir}/sshd"; pwd)
analytics_dir=$(cd "${this_dir}/analytics"; pwd)
apim_dir=$(cd "${this_dir}/apim"; pwd)
mysql_dir=$(cd "${this_dir}/mysql"; pwd)

docker build -t rsync:1.0.0 $rsync_dir
docker build -t sshd:1.0.0 $sshd_dir
docker build -t wso2am:2.1.0 $apim_dir
docker build -t wso2am-analytics:2.1.0 $analytics_dir
docker build -t apim-rdbms-kubernetes:2.1.0 $mysql_dir

#docker build -t rsync:1.0.0 $rsync_dir --squash
#docker build -t sshd:1.0.0 $sshd_dir --squash
#docker build -t wso2am:2.1.0 $apim_dir --squash
#docker build -t wso2am-analytics:2.1.0 $analytics_dir --squash
#docker build -t apim-rdbms-kubernetes:2.1.0 $mysql_dir --squash

