FROM python:slim

VOLUME /openstack.rc

RUN apt-get update  \
    && pip install python-openstackclient \
    && pip install python-swiftclient \
    && source /openstack.rc

ENTRYPOINT ["swift"]