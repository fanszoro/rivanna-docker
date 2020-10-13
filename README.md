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

Each version should reside in its own directory with a `README.md`. Here is a suggested template:
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

Individual `README.md` files are used as the Docker Hub repository overview.

To contribute, please visit the [wiki](https://github.com/uvarc/rivanna-docker/wiki) for instructions and tips.

## List of Docker images

|App|Version|Base Image|Compressed Size|Last Updated (UTC)|By|
|---|---|----|---:|---|---|
| [cellprofiler](https://hub.docker.com/r/uvarc/cellprofiler) | 3.1.9 | `openjdk:8-jdk-slim` | 584.534 MB | 2020-05-29 14:39:25.659657 | `rsdmse` |
| | 4.0.1 | `ubuntu:20.04` | 712.173 MB | 2020-09-09 11:29:11.872026 | `rsdmse` |
| [danpos](https://hub.docker.com/r/uvarc/danpos) | 3.1.1 | `python:3.7.6-slim-buster` | 208.754 MB | 2020-08-09 19:50:06.950131 | `rsdmse` |
| [ds5559](https://hub.docker.com/r/uvarc/ds5559) | spark3 | `jupyter/pyspark-notebook:4a112c0f11eb` | 1.358 GB | 2020-10-06 22:10:32.189093 | `rsdmse` |
| [dvipng](https://hub.docker.com/r/uvarc/dvipng) | 1.17 | `gcr.io/distroless/cc-debian10` | 13.623 MB | 2020-09-06 12:18:13.402213 | `rsdmse` |
| [hydrator](https://hub.docker.com/r/uvarc/hydrator) | 0.0.10 | `node:14.3.0-slim` | 178.938 MB | 2020-07-08 13:35:17.546402 | `rsdmse` |
| [inkscape](https://hub.docker.com/r/uvarc/inkscape) | 0.92.4 | `alpine:3.11.6` | 35.476 MB | 2020-05-28 11:40:21.37022 | `rsdmse` |
| | 1.0 | `alpine:3.12.0` | 77.034 MB | 2020-08-10 00:59:26.5463 | `rsdmse` |
| [lightgbm](https://hub.docker.com/r/uvarc/lightgbm) | 2.3.1 | `nvidia/opencl:runtime` | 104.777 MB | 2020-08-09 11:13:10.858526 | `rsdmse` |
| | 3.0.0 | `gcr.io/distroless/cc-debian10` | 14.916 MB | 2020-09-02 12:04:59.336756 | `rsdmse` |
| [nanopolish](https://hub.docker.com/r/uvarc/nanopolish) | 0.13.2 | `gcr.io/distroless/python3-debian10` | 142.970 MB | 2020-10-07 19:21:34.741678 | `rsdmse` |
| [omero-client](https://hub.docker.com/r/uvarc/omero-client) | 5.6.1 | `continuumio/miniconda3:4.8.2` | 1.375 GB | 2020-07-09 13:35:20.84667 | `rsdmse` |
| [patric](https://hub.docker.com/r/uvarc/patric) | 1.027 | `centos:8.1.1911` | 115.069 MB | 2020-06-02 10:53:43.716121 | `rsdmse` |
| | 1.031 | `debian:buster-slim` | 65.926 MB | 2020-08-10 00:49:27.812868 | `rsdmse` |
| [ps2eps](https://hub.docker.com/r/uvarc/ps2eps) | 1.68 | `debian:buster-slim` | 54.597 MB | 2020-10-05 21:20:09.556291 | `rsdmse` |
| [pytorch](https://hub.docker.com/r/uvarc/pytorch) | 1.5.0 | `pytorch/pytorch:1.5-cuda10.1-cudnn7-runtime` | 1.849 GB | 2020-06-09 01:13:13.500138 | `rsdmse` |
| | 1.5.1 | `pytorch/pytorch:1.5.1-cuda10.1-cudnn7-runtime` | 2.263 GB | 2020-07-09 10:50:23.537395 | `rsdmse` |
| | 1.6.0 | `pytorch/pytorch:1.6.0-cuda10.1-cudnn7-runtime` | 2.270 GB | 2020-08-25 21:33:21.645904 | `rsdmse` |
| [qiime2](https://hub.docker.com/r/uvarc/qiime2) | 2020.6 | `continuumio/miniconda3:4.8.2` | 1.325 GB | 2020-07-04 16:53:29.891717 | `rsdmse` |
| | 2020.8 | `debian:buster-slim` | 933.327 MB | 2020-10-08 14:50:35.394611 | `rsdmse` |
| [skopeo](https://hub.docker.com/r/uvarc/skopeo) | 1.1.0 | `frolvlad/alpine-glibc` | 21.101 MB | 2020-07-04 14:50:16.656518 | `rsdmse` |
| | 1.1.1 | `gcr.io/distroless/static-debian10` | 13.384 MB | 2020-08-21 14:27:12.698304 | `rsdmse` |
| [subversion](https://hub.docker.com/r/uvarc/subversion) | 1.14.0 | `ubuntu:20.10` | 39.418 MB | 2020-10-13 09:52:00.263967 | `rsdmse` |
| [sumo](https://hub.docker.com/r/uvarc/sumo) | 1.4.0 | `debian:bullseye-slim` | 176.588 MB | 2020-05-29 17:49:29.088243 | `rsdmse` |
| | 1.6.0 | `gcr.io/distroless/cc-debian10` | 85.778 MB | 2020-08-20 19:26:13.520411 | `rsdmse` |
| [tensorflow](https://hub.docker.com/r/uvarc/tensorflow) | 1.5.1 | `gcr.io/distroless/python2.7-debian10` | 896.176 MB | 2020-09-08 10:52:58.908871 | `rsdmse` |
| | 2.2.0 | `nvidia/cuda:10.1-base-ubuntu18.04` | 1.749 GB | 2020-06-11 11:42:02.752208 | `rsdmse` |
| | 2.3.0 | `gcr.io/distroless/python3-debian10` | 1.334 GB | 2020-08-31 18:54:16.712148 | `rsdmse` |

Note:
- App link redirects to Docker Hub repository.
- The `*.sif` Singularity image size (created after `singularity pull`) is about the same as the compressed size.

## License
[MIT license](LICENSE)
