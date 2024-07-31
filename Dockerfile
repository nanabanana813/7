FROM node:18-bullseye AS build-stage
WORKDIR /workspace

# 本番用ステージ
FROM build-stage AS production-stage

COPY package.json yarn.lock ./
RUN yarn install

ARG TARGET=staging
COPY . .

RUN yarn build

CMD ["yarn", "start"]