# rivanna-docker

**Autogenerated - do not edit manually!**  
Run `writeREADME.sh` to update this `README.md`.

This repository contains Dockerfiles for Rivanna.

## Structure

<pre>
.
├── app1
│   ├── version1
│   │   ├── Dockerfile
│   │   └── README.md
│   └── version2
│       ├── Dockerfile
│       └── README.md
├── app2
│   └── version1
│       ├── Dockerfile
│       └── README.md
├── README.md  # Do not edit this file!
└── writeREADME.sh
</pre>

Each Dockerfile should reside in its own directory with a `README.md` with this template:
````
<name of main app> <version> <any other important info>

<homepage of main app>

<any other apps/packages>

Usage on Rivanna:
```
module load singularity
singularity pull docker://uvarc/<app>:<tag>
./<app>_<tag>.sif
```
````

Individual `README.md` files are used as the Docker Hub repository description.

## Instructions for Contribution

1. Install the following utilities if not on our machine:
    * `docker`
    * `docker-pushrm` - add-on to push `README.md`  
    https://github.com/christian-korneck/docker-pushrm
    * `git`
1. Clone this repository
1. Build and test
    1. Prepare a `Dockerfile`
    1. Build with explicit tag (do not use `latest`): `docker build -t uvarc/<app>:<tag>`  
       Use the app version (and suffix if needed) as the tag
    1. Test locally (or on Rivanna - see below)
1. Write `README.md` for the app
1. Deploy
    1. Login to Docker Hub: `docker login`
    1. Push image to Docker Hub: `docker push uvarc/<app>:<tag>`
    1. Push `README.md` to Docker Hub (in subdirectory): `docker pushrm uvarc/<app>`
    1. Push to GitHub: `git add . && git commit -m "your message" && git push`
    1. Remember to logout: `docker logout`
1. Run on Rivanna
    1. `module load singularity`
    1. `singularity pull docker://uvarc/<app>:<tag>`
    1. To run the default command specified in `ENTRYPOINT`:  
       `./<app>_<tag>.sif`  
       Otherwise:  
       `singularity exec <app>_<tag>.sif <command>` or  
       `singularity shell <app>_<tag>.sif`

## List of Docker images

(Link to Docker Hub repository)

|App|Version|Base Image|Compressed Size|Last Updated (UTC)|By|
|---|---|----|---:|---|---|
| [cellprofiler](https://hub.docker.com/r/uvarc/cellprofiler) | 3.1.9 | `openjdk:8-jdk-slim` | 584.534 MB | 2020-05-29 14:39:25.659657 | `rsdmse` |
| [hydrator](https://hub.docker.com/r/uvarc/hydrator) | 0.0.10 | `node:14.3.0-slim` | 178.980 MB | 2020-05-29 00:13:16.099426 | `rsdmse` |
| [inkscape](https://hub.docker.com/r/uvarc/inkscape) | 0.92.4 | `alpine:3.11.6` | 35.476 MB | 2020-05-28 11:40:21.37022 | `rsdmse` |
| [sumo](https://hub.docker.com/r/uvarc/sumo) | 1.4.0 | `debian:bullseye-slim` | 176.588 MB | 2020-05-29 17:49:29.088243 | `rsdmse` |

