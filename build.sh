#!/bin/bash
bundle exec rake generate
docker build -t bruntonspall/octopress .
