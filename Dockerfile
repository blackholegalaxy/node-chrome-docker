FROM node:8

LABEL maintainer="blackholegalaxy"

ENV CHROME_VERSION 64.0.3282.167-1

RUN apt-get -qqy update \
  && apt-get -qqy install \
       wget ca-certificates apt-transport-https
       
RUN wget -q -O - https://dl.google.com/linux/linux_signing_key.pub | apt-key add - \
  && echo 'deb http://dl.google.com/linux/chrome/deb/ stable main' >> /etc/apt/sources.list \
  && apt-get -qqy update \
  && apt-get -qqy install google-chrome-stable=$CHROME_VERSION
