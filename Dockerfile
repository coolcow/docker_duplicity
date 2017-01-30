FROM farmcoolcow/alpine_entrypoint

MAINTAINER Jean-Michel Ruiz <mail@coolcow.org>

ENV ENTRYPOINT_USER=duplicity
ENV ENTRYPOINT_GROUP=duplicity
ENV ENTRYPOINT_HOME=/home

RUN apk --no-cache --update add \
      duplicity

WORKDIR $ENTRYPOINT_HOME

ENTRYPOINT ["/entrypoint_su-exec.sh", "duplicity"]

CMD ["--help"]
