#!/bin/bash

HEROKU_BACKEND_APP_NAME=$1 
HEROKU_FRONTEND_APP_NAME=$2 

# Replace CI/CD variable
sed -i -E "s/(heroku_app_name): .*/\1: $HEROKU_BACKEND_APP_NAME/g"  ./.github/workflows/deploy-backend-heroku.yml 
sed -i -E "s/(heroku_app_name): .*/\1: $HEROKU_FRONTEND_APP_NAME/g" ./.github/workflows/deploy-frontend-heroku.yml
# Clear bin
rm -rf .github/workflows/*.yml-e

# Replace ENV
sed -i -E "s/(heroku_app_name): .*/\1: $HEROKU_BACKEND_APP_NAME/g" ./frontend/.env.production
# Clear bin
rm -rf ./frontend/.env.production-e