# Docker Containers

[![Docker Version](https://images.microbadger.com/badges/version/patsissons/plex-sync.svg)](https://microbadger.com/images/patsissons/plex-sync) [![Docker Image](https://images.microbadger.com/badges/image/patsissons/plex-sync.svg)](https://microbadger.com/images/patsissons/plex-sync) [![Docker Pulls](https://img.shields.io/docker/pulls/patsissons/plex-sync.svg)](https://hub.docker.com/r/patsissons/plex-sync/) [![Docker Stars](https://img.shields.io/docker/stars/patsissons/plex-sync.svg)](https://hub.docker.com/r/patsissons/plex-sync/) [![License MIT](https://img.shields.io/badge/license-MIT-blue.svg)](https://opensource.org/licenses/MIT)

[`plex-sync`](https://github.com/jacobwgillespie/plex-sync) running in a container as a cron job.

## Usage

* `SECTION_MAPS` is the important environment variable to set, it uses the same syntax that `plex-sync` uses, but allows multiple mappings to be configured by separating them with a `|` as shown in the example below.
* `CRON_SCHEDULE` allows you to configure a non-default schedule to run the sync (default is every hour, `0 * * * *`)
* `INITIAL_RUN` will run `plex-sync` before starting cron if set to anything.

```sh
docker run -d -e SECTION_MAPS='xxxxxx@10.0.1.5/1 zzzzzz@10.0.1.10/3 | xxxx@10.0.1.6:32401/1,r https://yyyy@10.0.1.7/3,w zzzz@10.0.1.8/2,rw' -e CRON_SCHEDULE='*/5 * * * *' -e INITIAL_RUN=true patsissons/plex-sync
```
