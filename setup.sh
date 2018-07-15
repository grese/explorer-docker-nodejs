#!/bin/bash

# =============================================================================
# Required environment variables (must be passed to docker run)
# - GIT_REPO_URL: The URI to clone the git repository
# =============================================================================

APP_DIR=/app;

if [ -z "$GIT_REPO_URL" ]; then
  echo "GIT_REPO_URL env variable is required. exiting.";
  exit 1;
fi

# Clone the git repo
echo "Cloning git repository $GIT_REPO_URL ..."
git clone $GIT_REPO_URL $APP_DIR;
# Move into the APP_DIR
cd $APP_DIR;

# Install 'forever' npm module for running in background.
npm i -g forever;
# Install node modules
npm i;
# Start nodejs application in background using 'forever'
forever start -c "npm start" ./;
