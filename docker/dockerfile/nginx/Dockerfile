FROM ubuntu
RUN apt-get update && apt-get install nginx curl -y && rm -rf /var/lib/apt/lists/*
EXPOSE 80
COPY index.html /var/www/html/
WORKDIR /var/www/html
CMD ["nginx", "-g", "daemon off;"]
HEALTHCHECK --timeout=2s CMD curl -f localhost || exit 1
