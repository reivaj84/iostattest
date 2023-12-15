#FROM registry.access.redhat.com/ubi8/ubi-init
FROM fedora:39

RUN dnf -y install sysstat \
  	&& dnf clean all \
  	&& rm -rf /var/cache/yum

#ADD myecho /usr/local/bin
ENTRYPOINT "/usr/bin/iostat"
