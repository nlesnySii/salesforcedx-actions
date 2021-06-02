FROM salesforce/salesforcedx

RUN apt-get update
RUN echo y | apt-get install curl
RUN curl -sL https://deb.nodesource.com/setup_16.x | bash
RUN echo y | apt-get install nodejs
RUN echo y | apt-get install yarn

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

RUN echo y | sfdx plugins:install sfdx-git-delta

COPY entrypoint.sh /entrypoint.sh
ENTRYPOINT ["/entrypoint.sh"]
CMD ["help"]
