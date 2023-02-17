#! /bin/bash

docker build -t notion-repackaged . &&
docker run -v ./:/app notion-repackaged