FROM node:14.15.0-alpine as build

WORKDIR /app
COPY package.json package-lock.json ./
RUN npm install
COPY . .
RUN npm run build


FROM node:14.15.0-alpine

RUN mkdir -p /usr/src/app
WORKDIR /usr/src/app
COPY --from=build /app/dist/scaffolding-angular .
COPY --from=build /app/scripts/runtime-env.sh ./runtime-env.sh
RUN npm install -g serve@13.0.4
EXPOSE 3000
RUN chmod -R 765 ./runtime-env.sh
ENTRYPOINT ["/bin/sh", "-c", "./runtime-env.sh > ./assets/config/environment.js && serve -s"]
