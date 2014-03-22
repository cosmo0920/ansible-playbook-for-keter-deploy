#!/bin/bash

export ASK_SUDO_PASSWORD=1
export SERV_USER=ubuntu
export SERV_NAME=example-ubuntu-server.net
export APP_NAME=YesodApp
export APP_PORT=3000
bundle exec rake spec
