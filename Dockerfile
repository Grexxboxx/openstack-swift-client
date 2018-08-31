FROM python:slim

VOLUME /openstack.rc

ADD entrypoint.sh .

RUN apt-get update  \
    && pip install python-swiftclient

ENTRYPOINT ["entrypoint.sh"]