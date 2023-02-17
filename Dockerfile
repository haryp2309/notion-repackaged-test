FROM ubuntu
WORKDIR /app
RUN rm -f /etc/apt/apt.conf.d/docker-clean; echo 'Binary::apt::APT::Keep-Downloaded-Packages "true";' > /etc/apt/apt.conf.d/keep-cache
RUN --mount=type=cache,target=/var/cache/apt,sharing=locked \
  --mount=type=cache,target=/var/lib/apt,sharing=locked \
  apt-get update && apt-get install -y curl 
RUN --mount=type=cache,target=/var/cache/apt,sharing=locked \
  --mount=type=cache,target=/var/lib/apt,sharing=locked \
  curl -sL https://deb.nodesource.com/setup_14.x | bash - && \
  apt-get update && apt-get install -y nodejs p7zip-full p7zip-rar jq imagemagick moreutils patch git nodejs build-essential gcc
RUN --mount=type=cache,target=/var/cache/apt,sharing=locked \
  --mount=type=cache,target=/var/lib/apt,sharing=locked \
  apt-get update && \
  apt-get install -y software-properties-common && \
  add-apt-repository -y ppa:deadsnakes/ppa && \
  apt-get install python3.10 -y
RUN ln -s /usr/bin/python3 /usr/bin/python
RUN apt-get update && apt-get install --no-install-recommends -y libopenjp2-tools rpm libarchive-tools
#RUN npm install -g node-gyp
RUN adduser notionrepackaged
USER notionrepackaged
CMD ./start.sh