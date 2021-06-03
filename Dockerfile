FROM norlesny/sfdx-git-delta

RUN sfdx sgd:source:delta -h
RUN sh -c "sfdx plugins"

COPY entrypoint.sh /entrypoint.sh
ENTRYPOINT ["/entrypoint.sh"]
CMD ["help"]
