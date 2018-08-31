FROM python:slim

VOLUME /openstack.rc

ADD entrypoint.sh entrypoint.sh

RUN apt-get update  \
    && pip install python-swiftclient \
    && chmod +x entrypoint.sh

ENTRYPOINT ["entrypoint.sh"]