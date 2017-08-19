FROM alpine:3.4
MAINTAINER Francois CONSTANTIN

ENV POSTFIX_VERSION=3.1.1-r0
ENV PYTHON_VERSION=2.7.12-r0
ENV PY_PIP_VERSION=8.1.2-r0
ENV RSYSLOG_VERSION=8.18.0-r0
ENV SUPERVISOR_VERSION=3.3.3

RUN apk update && apk add --no-cache python=$PYTHON_VERSION py-pip=$PY_PIP_VERSION \
        postfix=$POSTFIX_VERSION postfix-pcre=$POSTFIX_VERSION rsyslog=$RSYSLOG_VERSION

RUN pip install --upgrade pip
RUN pip install supervisor==$SUPERVISOR_VERSION

COPY start.sh /start.sh

CMD ["/start.sh"]
