# Container Build Pipeline 

This git repo provides a container build pipeline for the following project:
https://github.com/drines-uc/hello_http

## Instructions to clone this git repository
The https://github.com/drines-uc/hello_http git repository is added as a git submodule to this git repository.
Run `git clone --recurse-submodules https://github.com/skoka-ucsc/assignment3.git` command to clone this git repository.


## Instructions to build the container
The [Dockerfile](https://github.com/skoka-ucsc/assignment3/blob/main/Dockerfile) contains two build stages, where the first stage builds the c binary and the second build stage puts the binary into a scratch container.
- Run `docker build . -t dummyserv_scratch` command to build the scratch container.
- Run `docker build . --target dummyserv_build -t dummyserv_build` command to just build the c binary.

## Instructions to run the scratch container 
- Run `docker run -dp 80:8080 --rm  --name=s1 dummyserv_scratch` command to run the scratch container with name "s1" in detached mode with container port 8080 mapped to host port 80.
- The dummyserv application is accessible at http://localhost:80.
- Run `docker stop s1` to stop the scratch container.

## Useful links
- [Docker CLI Reference](https://docs.docker.com/engine/reference/commandline/docker/)

