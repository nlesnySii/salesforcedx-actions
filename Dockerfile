FROM salesforce/salesforcedx

RUN mkdir $HOME/.config/sfdx/config/
RUN echo '["sfdx-git-delta"]' > $HOME/.config/sfdx/config/unsignedPluginWhiteList.json
RUN sfdx plugins:install sfdx-git-delta

COPY entrypoint.sh /entrypoint.sh
ENTRYPOINT ["/entrypoint.sh"]
CMD ["help"]
