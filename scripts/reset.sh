#!/bin/sh

sudo rm -rf renv/
sudo rm -f .Rprofile
sudo rm -f Rplots*.pdf

docker-compose down -v
