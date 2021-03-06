# farmcoolcow/duplicity 

[![](https://img.shields.io/badge/  FROM  -farmcoolcow/entrypoints-lightgray.svg)](https://hub.docker.com/r/farmcoolcow/entrypoints) [![](https://images.microbadger.com/badges/commit/farmcoolcow/duplicity.svg)](https://github.com/coolcow/docker_duplicity/commits/master) [![](https://images.microbadger.com/badges/image/farmcoolcow/duplicity.svg)](https://microbadger.com/images/farmcoolcow/duplicity) [![](https://images.microbadger.com/badges/license/farmcoolcow/duplicity.svg)](https://raw.githubusercontent.com/coolcow/docker_duplicity/master/LICENSE.txt)

---

## What is duplicity ?

*Encrypted bandwidth-efficient backup using the rsync algorithm*

Duplicity backs directories by producing encrypted tar-format volumes and uploading them to a remote or local file server. Because duplicity uses librsync, the incremental archives are space efficient and only record the parts of files that have changed since the last backup. Because duplicity uses GnuPG to encrypt and/or sign these archives, they will be safe from spying and/or modification by the server.

More informations on [the official duplicity website](http://duplicity.nongnu.org/).

---

## How to use this image

This image is based on [farmcoolcow/entrypoints](https://hub.docker.com/r/farmcoolcow/entrypoints/).

The default **ENTRYPOINT** is ```duplicity``` and the default **CMD** is ```--help```.

The available environment variables are:
  * ```PUID``` (default = **1000**)  
    The user id of the user created inside the docker container.
  * ```PGID``` (default = **1000**)  
    The group id of the user created inside the docker container.

  > Use the environment variables ```PUID``` and ```PGID``` to execute duplicity with the **uid** and **gid** of your user. This prevents permission problems while accessing your data.

---

### ...

> desciption comming soon

