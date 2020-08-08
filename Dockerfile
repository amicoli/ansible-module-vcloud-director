# Latest Ubuntu LTS
FROM ubuntu:18.04

RUN apt-get update && \
    apt-get install python3 python3-pip git -y

RUN pip3 install --upgrade pip setuptools
RUN pip3 install ansible
RUN pip3 install --upgrade git+https://github.com/vmware/vsphere-automation-sdk-python.git
RUN pip3 install --no-cache-dir pyvmomi
RUN pip3 install --force-reinstall pyvcloud==22.0.0 --ignore-installed

WORKDIR /ansible
