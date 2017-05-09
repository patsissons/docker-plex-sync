FROM node

MAINTAINER Pat Sissons patricksissons@gmail.com

ENV PLEX_TOKEN=''
ENV DRY_RUN=''
ENV MATCH_TYPE=''
ENV RATE_LIMIT=''

ENV SECTION_MAPS=''
ENV CRON_SCHEDULE='0 * * * *'
ENV INITIAL_RUN=''

ADD root/ /

RUN apt-get update && \
    apt-get -y -qq --force-yes install cron && \
    npm install -g --quiet plex-sync && \
    chmod 0644 /usr/local/bin/plex-sync-job && \
    chmod 0644 /usr/local/bin/plex-sync-entrypoint && \
    touch /var/log/cron.log

ENTRYPOINT /usr/local/bin/plex-sync-entrypoint
