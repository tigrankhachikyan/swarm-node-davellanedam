#!/bin/sh

echo "Cloning sumbodule projects"
git clone https://github.com/davellanedam/node-express-mongodb-jwt-rest-api-skeleton backend/node-express-mongodb-jwt-rest-api-skeleton
git clone https://github.com/davellanedam/vue-skeleton-mvp frontend/vue-skeleton-mvp

echo "remove .git directories from the submodules to keep track of local changes"
rm -rf backend/node-express-mongodb-jwt-rest-api-skeleton/.git
rm -rf frontend/vue-skeleton-mvp/.git