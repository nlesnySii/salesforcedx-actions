FROM norlesny/sfdx-git-delta

RUN sfdx plugins

COPY entrypoint.sh /entrypoint.sh
ENTRYPOINT ["/entrypoint.sh"]
CMD ["help"]
