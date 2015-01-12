FROM ubuntu
MAINTAINER Matthieu Barthelemy <contact@matthieu.me>

# Based on dduportal/fig

# Update and install packages
RUN apt-get update && apt-get install -y \
  build-essential \
  curl \
  wget \
  bzr \
  cvs \
  git \
  mercurial \
  subversion \
  apache2-utils

# Install latest docker
RUN curl -sSL https://get.docker.com/ubuntu/ | sudo sh

# Install latest fig
RUN curl -L https://github.com/docker/fig/releases/download/1.0.0/fig-`uname -s`-`uname -m` > /usr/local/bin/fig ; chmod +x /usr/local/bin/fig

VOLUME ["/config"]
WORKDIR /app

# Default run "fig --help"
#ENTRYPOINT ["/usr/local/bin/fig"]
#CMD ["--help"]