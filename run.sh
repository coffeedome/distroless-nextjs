#!/bin/bash

cp -a Dockerfile example
cd example || exit
docker build -t distroless-nextjs-example .
docker run -p 3000:3000 distroless-nextjs-example