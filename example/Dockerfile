FROM registry.access.redhat.com/ubi8/ubi:8.5
COPY 1.sh /home/
RUN ls -la /etc/pki/entitlement
RUN rm /etc/rhsm-host
RUN source /home/1.sh
RUN yum repolist --disablerepo=*
RUN subscription-manager repos --enable=rhocp-4.10-for-rhel-8-x86_64-rpms
RUN repoquery --available --quiet --all --repoid=rhocp-4.10-for-rhel-8-x86_64-rpms
RUN yum -y update
RUN yum install -y openshift-clients.x86_64

