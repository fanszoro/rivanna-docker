#!/bin/bash
README="README.md"
LIST="List of Docker images" 

cat >$README <<EOF
# rivanna-docker

**Autogenerated - do not edit manually!**  
Run \`writeREADME.sh\` to update this \`README.md\`.

This repository contains Dockerfiles for Rivanna.

## Structure

Each Dockerfile should reside in its own directory with a \`README.md\` of the form:
\`\`\`
<name and version of main app>
<homepage of main app>
<usage>
\`\`\`

The first line is reproduced under \"$LIST\" in the main \`README.md\` on GitHub.

Individual \`README.md\` files are shown in the Docker Hub repository description.

## Instructions

1. Clone this repository
1. Build and test
    1. Prepare a \`Dockerfile\`
    1. Build with explicit tag (do not use \`latest\`): \`docker build -t uvarc/<app>:<tag>\`  
       Use the app version (and suffix if needed) as the tag
    1. Test locally
1. Write \`README.md\` for the app
1. Deploy
    1. Login to Docker Hub: \`docker login\`
    1. Push image to Docker Hub: \`docker push uvarc/<app>\`
    1. Push \`README.md\` to Docker Hub (in subdirectory): \`docker pushrm uvarc/<app>\`
    1. Push to GitHub: \`git add . && git commit -m "your message" && git push\`
1. Run on Rivanna
    1. \`module load singularity\`
    1. \`singularity pull docker://uvarc/<app>:<tag>
    1. To run the default command specified in \`ENTRYPOINT\`: \`./<app>_<tag>.sif\`  
       Otherwise:  
       \`singularity exec <app>_<tag>.sif <command>\`
       \`singularity shell <app>_<tag>.sif\`

## Utilities

Install the following if not on our machine:
* \`docker\`
* \`docker-pushrm\` - add-on to push \`README.md\`  
https://github.com/christian-korneck/docker-pushrm
* \`git\`

EOF

cat >>$README <<EOF

## $LIST

EOF

for i in *;  do
    if [ -e $i/Dockerfile ]; then
        echo "- $i - $(head -1 $i/README.md)" >>$README
    fi
done
