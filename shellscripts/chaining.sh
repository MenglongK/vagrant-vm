#!/bin/bash
# ; all command is not related to each other, but will run sequentially, if one command fails, the next command will still run
# docker -v ; nginx -v ; testing

# || if 1st command failed, 2nd command will run but if 1st command succeed, 2nd command will not run
docker -v || nginx -v || testing
which testing || echo "Installing testing command..."

# && if 1st command succeed, 2nd command will run but if 1st command failed, 2nd command will not run
docker -v && echo "Docker is installed"

# if you want to hide outcome
docker -v &> /dev/null && echo "Docker is installed"