FROM registry.access.redhat.com/ubi8/ubi-init
#FROM fedora:39

RUN yum -y install sysstat \
  	&& yum clean all \
  	&& rm -rf /var/cache/yum

#ADD myecho /usr/local/bin
ENTRYPOINT "/usr/bin/iostat"
