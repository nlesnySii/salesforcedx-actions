FROM salesforce/salesforcedx

RUN echo y | sfdx plugins:install sfdx-git-delta
RUN node -v

COPY entrypoint.sh /entrypoint.sh
ENTRYPOINT ["/entrypoint.sh"]
CMD ["help"]
