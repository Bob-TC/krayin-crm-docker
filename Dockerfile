FROM webkul/krayin:v2.1.2
RUN apt-get update && apt-get install -y git zip unzip && rm -rf /var/lib/apt/lists/*
COPY --from=composer:2 /usr/bin/composer /usr/bin/composer
WORKDIR /var/www/html
RUN composer require --no-dev krayin/rest-api
