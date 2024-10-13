#!/bin/bash

set -e

sudo apt-get -y install golang-go
go install github.com/khulnasoft/labss/lessons/127/my-app@main
