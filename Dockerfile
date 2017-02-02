FROM farmcoolcow/alpine_entrypoint

MAINTAINER Jean-Michel Ruiz <mail@coolcow.org>

# Build-time metadata as defined at http://label-schema.org

ARG BUILD_DATE
ARG VCS_REF
ARG VERSION

LABEL org.label-schema.build-date=$BUILD_DATE \
      org.label-schema.name="duplicity" \
      org.label-schema.description="Simple duplicity Docker image based on alpine." \
      org.label-schema.url="https://hub.docker.com/r/farmcoolcow/duplicity/" \
      org.label-schema.license="GPL-3.0" \
      org.label-schema.vcs-ref=$VCS_REF \
      org.label-schema.vcs-url="https://github.com/farmcoolcow/docker_duplicity" \
      org.label-schema.vendor="coolcow.org" \
      org.label-schema.version=$VERSION \
      org.label-schema.schema-version="1.0"


# Evironment variables

ENV ENTRYPOINT_USER=duplicity \
    ENTRYPOINT_GROUP=duplicity \
    ENTRYPOINT_HOME=/home

# install duplicity

RUN apk --no-cache --update add \
      duplicity


WORKDIR $ENTRYPOINT_HOME

ENTRYPOINT ["/entrypoint_su-exec.sh", "duplicity"]

CMD ["--help"]
