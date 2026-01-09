ARG NODE_VERSION=22-bookworm

FROM node:${NODE_VERSION}

ENV LANG=C.UTF-8
ENV LC_ALL=C.UTF-8

LABEL company="convenia"

RUN apt-get update && \
    apt-get install -y openssh-client python3 diff-cover

ENV NODE_OPTIONS="--max_old_space_size=3072"
ENV VITE_INTEGRATION_TEST="true"
