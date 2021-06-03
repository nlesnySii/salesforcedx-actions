FROM norlesny/sfdx-git-delta

RUN sfdx plugins
RUN sfdx sgd:source:delta --to HEAD --from HEAD^ --output .

COPY entrypoint.sh /entrypoint.sh
ENTRYPOINT ["/entrypoint.sh"]
CMD ["help"]
