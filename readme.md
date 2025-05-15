# factorio-server-builder

This repository is for building and running containerized factorio servers.

## prerequisites

1. podman

## build

> podman build . -t <IMAGE_NAME>

## run

> podman run -p 34197:34197/udp -dit <IMAGE_NAME>
