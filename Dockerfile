FROM salesforce/salesforcedx

RUN npm install sfdx-git-delta@latest --global
RUN sgd --version

COPY entrypoint.sh /entrypoint.sh
ENTRYPOINT ["/entrypoint.sh"]
CMD ["help"]
