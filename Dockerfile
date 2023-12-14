FROM registry.access.redhat.com/ubi8
#FROM fedora:39

RUN dnf install -y sysstat \
  	&& dnf clean all \
  	&& rm -rf /var/cache/yum

#ADD myecho /usr/local/bin
ENTRYPOINT "/usr/bin/iostat"
