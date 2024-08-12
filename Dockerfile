FROM build-base
WORKDIR /usr/src/siprec
ENV NODE_ENV=production
COPY package*.json ./
RUN npm ci && npm cache clean --force
COPY app.js ./
COPY lib lib
COPY config config

USER node
CMD [ "app.js" ]
