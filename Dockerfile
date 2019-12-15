FROM node

MAINTAINER Pat Sissons patricksissons@gmail.com

ENV PLEX_TOKEN="" \
    DRY_RUN="" \
    MATCH_TYPE="" \
    RATE_LIMIT="" \
    SECTION_MAPS="" \
    CRON_SCHEDULE="0 * * * *" \
    INITIAL_RUN="" \
    PACKAGE_DEPS="cron rsyslog" \
    NPM_PACKAGE_VERSION="0.6.1"

ADD root/ /

RUN  set -x \
  && apt-get update -qq \
  && apt-get install -qq --no-install-recommends -y ${PACKAGE_DEPS} \
  && npm install -g --quiet plex-sync@${NPM_PACKAGE_VERSION} \
  && chmod 0755 /usr/local/bin/plex-sync-job \
  && chmod 0755 /usr/local/bin/plex-sync-entrypoint \
  && touch /var/log/cron.log \
  && apt-get -qq -y autoremove \
  && apt-get -qq -y clean autoclean \
  && rm -rf /var/lib/{apt,dpkg,cache,log}

ENTRYPOINT ["/usr/local/bin/plex-sync-entrypoint"]
