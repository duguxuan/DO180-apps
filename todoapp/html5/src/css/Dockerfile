FROM registry.access.redhat.com/ubi8/ubi:latest
COPY 1.sh /home/
COPY 1.txt /home/
RUN ls -la /etc/pki/entitlement
RUN rm /etc/rhsm-host
RUN yum install -y yum-utils
RUN cat /home/1.txt | xargs -d,  source /home/1.sh

