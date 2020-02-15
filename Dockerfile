FROM debian:buster-slim

ARG VCS_REF=unknown
ARG BUILD_DATE=unknown
ARG VERSION=0.0
LABEL maintainer="cseelye@gmail.com" \
      url="https://github.com/cseelye/makeviz" \
      name="makeviz" \
      description="Create makefile dependency graph" \
      vcs-ref=$VCS_REF \
      build-date=$BUILD_DATE \
      version=$VERSION

RUN apt-get update && \
    DEBIAN_FRONTEND=noninteractive apt-get install --yes \
        curl \
        graphviz \
        python3 \
        remake \
        valgrind && \
    curl -L https://raw.githubusercontent.com/jrfonseca/gprof2dot/master/gprof2dot.py -o /gprof2dot.py
COPY gen-makeviz /gen-makeviz

WORKDIR /src
CMD ["/gen-makeviz"]

