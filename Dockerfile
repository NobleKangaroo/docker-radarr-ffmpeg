FROM linuxserver/radarr
MAINTAINER noblekangaroo

ARG BUILD_DATE
ARG VCS_REF
ARG VERSION

LABEL org.label-schema.build-date=$BUILD_DATE \
    org.label-schema.name="Radarr" \
    org.label-schema.description="Radarr container with ffmpeg" \
    org.label-schema.url="http://github.com/NobleKangaroo/docker-radarr-ffmpeg" \
    org.label-schema.vcs-ref=$VCS_REF \
    org.label-schema.vcs-url="http://github.com/NobleKangaroo/docker-radarr-ffmpeg" \
    org.label-schema.vendor="NobleKangaroo" \
    org.label-schema.version=$VERSION \
    org.label-schema.schema-version="1.0"

# Install packages
RUN \
    apt-get update && \
    apt-get -y install ffmpeg && \
    rm -rf /tmp/* /var/lib/apt

