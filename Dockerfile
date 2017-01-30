FROM alpine

MAINTAINER Jean-Michel Ruiz <mail@coolcow.org>

RUN apk --no-cache --update add \
      duplicity \
      shadow \
      su-exec

WORKDIR /home

COPY entrypoint.sh /usr/local/bin/entrypoint.sh
RUN chmod +x /usr/local/bin/entrypoint.sh

#                            USER         GROUP        HOME     COMMAND
ENTRYPOINT ["entrypoint.sh", "duplicity", "duplicity", "/home", "duplicity"]

CMD ["--help"]
