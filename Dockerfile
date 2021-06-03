FROM norlesny/sfdx-git-delta

RUN sfdx sgd:source:delta -v

COPY entrypoint.sh /entrypoint.sh
ENTRYPOINT ["/entrypoint.sh"]
CMD ["help"]
