FROM 10.201.152.1:5000/wso2am:2.1.0

ARG USER=wso2user

COPY carbon/ /home/${USER}/tmp/carbon/
COPY artifacts/* ${USER_HOME}/wso2am-2.1.0/repository/components/lib/

USER root
RUN chown -R ${USER} /home/${USER}/
USER ${USER}
