FROM node:14.14-alpine

# install Salesforce CLI from npm
RUN npm install sfdx-cli --global
RUN sfdx --version

# install SFDX-Git-Delta plugin - https://github.com/scolladon/sfdx-git-delta
RUN echo y | sfdx plugins:install sfdx-git-delta
RUN sfdx plugins

COPY entrypoint.sh /entrypoint.sh
ENTRYPOINT ["/entrypoint.sh"]
CMD ["help"]
