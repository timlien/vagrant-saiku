#!/bin/bash

# If container vagrant_saiku is not active, proceed.
if [ "$(docker ps | awk 'FNR >= 2 {print $NF}' | grep saiku)" == "vagrant_saiku" ]; then

  # If there is already a stopped container named vagrant_saiku, start the container.
  if [ "$(docker ps -a | awk 'FNR >= 2 {print $NF}' | grep saiku)" == "vagrant_saiku" ]; then
    # Start the container
    echo 'Starting stopped vagrant_saiku container'
    docker start vagrant_saiku
  else
    # If there is no stopped container name vagrant_saiku, start a new container named vagrant_saiku from image timlien/docker-saiku.
    echo 'Starting new container vagrant_saiku'
    docker run -d -p 8080:8080 --name vagrant_saiku -v /vagrant:/vagrant timlien/docker-saiku
  fi

fi