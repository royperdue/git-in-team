FROM octohost/nodejs

ENV PORT 3000

ADD . /srv/www

WORKDIR /srv/www

RUN npm install

RUN make

EXPOSE 3000

CMD ./bin/gitinteam --port $PORT $GITHUB_ORGANIZATION $GITHUB_API_TOKEN $GITHUB_API_TYPE $GITHUB_APP_ID $GITHUB_APP_SECRET
