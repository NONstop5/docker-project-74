### Hexlet tests and linter status:
[![Actions Status](https://github.com/NONstop5/docker-project-74/actions/workflows/hexlet-check.yml/badge.svg)](https://github.com/NONstop5/docker-project-74/actions)

[![Build Status](https://github.com/NONstop5/docker-project-74/actions/workflows/push.yml/badge.svg)](https://github.com/NONstop5/docker-project-74/actions)

### Requirements

* docker
* docker compose
* make
---
### Clone project
```bash
git clone git@github.com:NONstop5/docker-project-74.git
```

### Dev prepare
```bash
make env-prepare && \
make compose-prepare
```

### Dev run
```bash
make compose-build && \
make compose-setup && \
make compose-up
```
---
### Prod image build
```bash
make compose-build-prod
```
### Prod image push
IMAGE_TAG_NAME: `ilyaguev/docker-project-74` 
```bash
make compose-push-prod
```
### Prod run tests
```bash
make compose-test-ci
```
