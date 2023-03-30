#!/bin/sh

SPA_ENVIRONMENT=prod \
SPA_SERVER_URL=http://prod-endpoint.com/api \
./runtime-env.sh > ../dist/scaffolding-angular/assets/config/environment.js
