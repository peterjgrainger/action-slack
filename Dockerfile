FROM mhart/alpine-node:10.15.3

LABEL "com.github.actions.name"="PG Updated slack message"
LABEL "com.github.actions.description"="Outputs a message specific to the BITRCONF talk"
LABEL "com.github.actions.icon"="zap"
LABEL "com.github.actions.color"="yellow"

LABEL "repository"="https://github.com/Ilshidur/actions"
LABEL "homepage"="https://github.com/Ilshidur/action-slack"
LABEL "maintainer"="Ilshidur <ilshidur@gmail.com>"
LABEL "version"="1.4.0"

ADD package.json package-lock.json /
RUN npm ci
ADD entrypoint.js /
RUN chmod +x /entrypoint.js

ENTRYPOINT ["node", "/entrypoint.js"]
