FROM build-base
WORKDIR /usr/src/siprec
ENV NODE_ENV=production
COPY package*.json ./
RUN npm ci && npm cache clean --force
COPY app.js lib ./

USER node
CMD [ "app.js" ]
