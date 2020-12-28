FROM alpine/git:1.0.7

LABEL "com.github.actions.name"="Notify release"
LABEL "com.github.actions.description"="Notify new release to odoo"
LABEL "com.github.actions.icon"="tag"
LABEL "com.github.actions.color"="blue"

LABEL "repository"="https://github.com/aurestic/gh_workflow_notify_release"
LABEL "homepage"="https://github.com/aurestic/gh_workflow_notify_release"
LABEL "maintainer"="Jose Zambudio <zamberjo@gmail.com>"

RUN apk add coreutils

COPY entrypoint.sh /entrypoint.sh

ENTRYPOINT ["sh", "/entrypoint.sh"]
