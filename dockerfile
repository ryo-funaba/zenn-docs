FROM node:lts-alpine

WORKDIR /workspaces/zenn-docs

COPY --chown=node:node package.json yarn.lock ./

RUN yarn install

USER node

WORKDIR /workspaces/zenn-docs
