FROM ubuntu:14.04

RUN DEBIAN_FRONTEND=noninteractive apt-get update --fix-missing && apt-get install -y build-essential git python python-dev python-setuptools nginx supervisor
RUN easy_install pip
CMD [ "python", "./application.py" ]
