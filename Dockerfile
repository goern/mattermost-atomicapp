FROM projectatomic/atomicapp:0.5.0

MAINTAINER Christoph Görn <goern@redhat.com>

ENV container docker
ENV MATTERMOST_VERSION 2.2.0

# Labels could be consumed by OpenShift
LABEL io.k8s.description="Mattermost is an open source, self-hosted Slack-alternative" \
      io.k8s.display-name="Mattermost 2.2.0" \
      io.openshift.expose-services="8065:mattermost" \
      io.openshift.tags="mattermost,slack"

# Labels consumed by Red Hat build service
LABEL Component="mattermost" \
      Name="projectatomic/mattermost-220-centos7" \
      Version="2.2.0" \
      Release="1" \
      Architecture="x86_64"

# Labels required by the Nulecule Specification
LABEL io.projectatomic.nulecule.specversion="0.0.2" \
      io.projectatomic.nulecule.providers="docker"

ADD /Nulecule /Dockerfile README.md LICENSE /application-entity/
ADD /artifacts /application-entity/artifacts
