#!/bin/bash

HEROKU_BACKEND_APP_NAME=$1 
HEROKU_FRONTEND_APP_NAME=$2 

# Replace CI/CD variable
sed -i -e 's,HEROKU_BACKEND_APP_NAME,'$HEROKU_BACKEND_APP_NAME',g' ./.github/workflows/deploy-backend-heroku.yml 
sed -i -e 's,HEROKU_FRONTEND_APP_NAME,'$HEROKU_FRONTEND_APP_NAME',g' ./.github/workflows/deploy-frontend-heroku.yml
# Clear bin
rm -rf .github/workflows/*.yml-e

# Replace ENV
sed -i -e 's,HEROKU_BACKEND_APP_NAME,'$HEROKU_BACKEND_APP_NAME',g' ./frontend/.env.production
# Clear bin
rm -rf ./frontend/.env.production-e