# explorer-docker-nodejs
Docker image spec for explorer NodeJS services

## Usage
Used for building & deploying docker images for explorer NodeJS services.
- build an image - `docker build -t explorer-service .`
- run built image - `docker run --env GIT_REPO_URL=<url of git repo> -it explorer-service`
