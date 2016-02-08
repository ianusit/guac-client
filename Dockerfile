FROM tomcat:8.0.20-jre7

MAINTAINER Ianus IT GmbH <info@ianus-it.de>

ENV GUAC_VERSION=0.9.8
ENV GUAC_JDBC_VERSION=0.9.8

COPY files/deploy.sh /deploy.sh
COPY files/start.sh /start.sh

RUN chmod +x /deploy.sh /start.sh && /deploy.sh

CMD ["/start.sh" ]
