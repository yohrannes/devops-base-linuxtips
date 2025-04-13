FROM ubuntu:18.04
LABEL maintainer="jeferson@linuxtips.io"
RUN apt-get update && apt-get install nginx curl -y && rm -rf /var/lib/apt/lists/*
EXPOSE 80
# adiciona e descompacta automaticamente
ADD node_exporter-1.9.0.linux-amd64.tar.gz /root/node-exporter
COPY index.html /var/www/html/
WORKDIR /var/www/html
ENV APP_VERSION=1.0.0
ENTRYPOINT ["nginx"]
CMD ["-g", "daemon off;"]
HEALTHCHECK --timeout=2s CMD curl -f localhost || exit 1