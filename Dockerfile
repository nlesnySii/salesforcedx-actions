FROM norlesny/sfdx-git-delta

RUN apk add --update --no-cache  \
      git \
      findutils \
      bash \
      unzip \
      curl \
      wget \
      nodejs-npm \
      openjdk8-jre \
      openssh-client \
      perl \
      jq

COPY entrypoint.sh /entrypoint.sh
ENTRYPOINT ["/entrypoint.sh"]
CMD ["help"]
