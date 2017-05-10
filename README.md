# Docker Containers

[![Docker Version](https://images.microbadger.com/badges/version/patsissons/plex-sync.svg)](https://microbadger.com/images/patsissons/plex-sync) [![Docker Image](https://images.microbadger.com/badges/image/patsissons/plex-sync.svg)](https://microbadger.com/images/patsissons/plex-sync) [![Docker Pulls](https://img.shields.io/docker/pulls/patsissons/plex-sync.svg)](https://hub.docker.com/r/patsissons/plex-sync/) [![Docker Stars](https://img.shields.io/docker/stars/patsissons/plex-sync.svg)](https://hub.docker.com/r/patsissons/plex-sync/) [![License MIT](https://img.shields.io/badge/license-MIT-blue.svg)](https://opensource.org/licenses/MIT)

[`plex-sync`](https://github.com/jacobwgillespie/plex-sync) running in a container as a cron job.

## Usage

```sh
docker run -d -e SECTION_MAPS='xxxxxx@10.0.1.5/1 zzzzzz@10.0.1.10/3' -e CRON_SCHEDULE='*/5 * * * *' -e INITIAL_RUN=true patsissons/plex-sync
```
