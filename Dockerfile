FROM ruby:2.4

MAINTAINER thinkbot@outlook.de

ENV VERSION=0.2.0

RUN gem install chirp --version ${VERSION} --no-format-exec

WORKDIR /tmp

ENTRYPOINT ["chirp"]
CMD ["--help"]
