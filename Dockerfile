FROM ubuntu:latest

MAINTAINER Jean-Michel Ruiz <mail@coolcow.org>

RUN apt-get update \
    && apt-get install -y software-properties-common \
    && add-apt-repository -y ppa:duplicity-team/ppa \
    && apt-get purge -y software-properties-common \
    && apt-get update -y \
    && apt-get install -y duplicity \
    && apt-get autoremove --purge -y \
    && apt-get clean -y

ENTRYPOINT ["duplicity"]
CMD ["--help"]
