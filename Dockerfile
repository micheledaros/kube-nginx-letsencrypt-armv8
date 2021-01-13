FROM arm64v8/fedora:latest
MAINTAINER Seth Jennings <sethdjennings@gmail.com>

RUN dnf install certbot -y && dnf clean all
RUN mkdir -p /etc/letsencrypt

COPY secret-patch-template.json /
COPY entrypoint.sh /

CMD ["/entrypoint.sh"]
