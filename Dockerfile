FROM salesforce/salesforcedx

RUN mkdir $HOME/.config/sfdx/ -p
RUN echo '["sfdx-git-delta"]' > $HOME/.config/sfdx/unsignedPluginWhiteList.json

COPY entrypoint.sh /entrypoint.sh
ENTRYPOINT ["/entrypoint.sh"]
CMD ["help"]
