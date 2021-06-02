FROM salesforce/salesforcedx

RUN sfdx plugins:install sfdx-git-delta

COPY entrypoint.sh /entrypoint.sh
ENTRYPOINT ["/entrypoint.sh"]
CMD ["help"]
