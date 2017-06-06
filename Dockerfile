FROM node:6

COPY . /usr/src/app/

USER root

RUN npm install -g typescript

RUN npm install
ENV PORT 3000
ENV DB_PORT_27017_TCP_ADDR db
CMD [ "npm", "start" ]
EXPOSE 3000
