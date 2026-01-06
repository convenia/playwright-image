ARG PLAYWRIGHT_VERSION=1.48.0
ARG NODE_VERSION=22-bookworm

FROM node:${NODE_VERSION}

LABEL company="convenia"

RUN apt-get update && \
    apt-get install -y openssh-client python3 diff-cover

RUN npx -y playwright@${PLAYWRIGHT_VERSION} install --with-deps

ENV NODE_OPTIONS="--max_old_space_size=3072"
ENV VITE_INTEGRATION_TEST="true"
