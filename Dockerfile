FROM alpine:3.2
MAINTAINER Francois CONSTANTIN

RUN apk add --no-cache postfix postfix-pcre rsyslog

COPY start.sh /start.sh

CMD ["/start.sh"]
