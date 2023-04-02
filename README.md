# Overview

This repository Contains the Docker-Compose file and helper scripts to get the idreesia-erp up and running on a digital ocean droplet.

## Setup Steps

- Create droplet using the docker image from the marketplace. This comes with docker and docker-compoase already installed and UFW firewall enabled for ssh access enabled.

- Add a non-root user and add it to the `sudo` and `docker` group. Instructions here `https://www.digitalocean.com/community/tutorials/initial-server-setup-with-ubuntu-18-04`

- Install dropbox headless `https://www.dropbox.com/install-linux`. Also download the additional script `Dropbox.py` from this page and set that up. `https://www.ostechnix.com/install-dropbox-in-ubuntu-18-04-lts-server/`

- Remove unnecessary folders from dropbox syncing using the above script.

- Clone this github repository on the server

- Setup ngrok using the scripts in the `ngrok` folder.

- Start the mongo container. Restore the database using the commnd

```
docker-compose up -d mongo
docker-compose exec mongo /scripts/restore-db.sh
```

- Start the web and jobs containers.

```
docker-compose up -d web jobs
```
