FROM node:boron

ENV PARSE_HOME /parse

ADD package.json ${PARSE_HOME}/

ADD jsconfig.json ${PARSE_HOME}/


WORKDIR $PARSE_HOME
RUN npm install

ADD index.js ${PARSE_HOME}/

ENV PORT 1337

EXPOSE $PORT
ENV NODE_PATH .

CMD ["npm", "start"]
