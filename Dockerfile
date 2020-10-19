FROM wordpress:5.2.4-php7.2-apache

RUN apt-get update \
    && apt-get install -y libpng-dev libjpeg-dev libssl-dev libcurl4-openssl-dev bzip2 libbz2-dev libxml2-dev libgmp3-dev libreadline-dev libedit-dev recode librecode-dev libsodium-dev argon2 libargon2-dev libtidy-dev libxslt-dev \
    && rm -rf /var/lib/apt/lists/*

RUN docker-php-ext-install bz2
RUN docker-php-ext-install calendar
RUN docker-php-ext-install curl
RUN docker-php-ext-install dom
RUN docker-php-ext-install exif
RUN docker-php-ext-install ftp
RUN docker-php-ext-configure gd --with-png-dir=/usr --with-jpeg-dir=/usr
RUN docker-php-ext-install gd
RUN docker-php-ext-install gettext
RUN docker-php-ext-install gmp
RUN docker-php-ext-install hash
RUN docker-php-ext-install iconv
RUN docker-php-ext-install json
RUN docker-php-ext-install mbstring
RUN docker-php-ext-install mysqli
RUN docker-php-ext-install pcntl
RUN docker-php-ext-install pdo_mysql
RUN docker-php-ext-install posix
RUN docker-php-ext-install readline
RUN docker-php-ext-install recode
RUN docker-php-ext-install session
RUN docker-php-ext-install shmop
RUN docker-php-ext-install soap
RUN docker-php-ext-install sockets
RUN docker-php-ext-install sodium
RUN docker-php-ext-install sysvmsg
RUN docker-php-ext-install sysvsem
RUN docker-php-ext-install sysvshm
RUN docker-php-ext-install tidy
RUN docker-php-ext-install tokenizer
RUN docker-php-ext-install wddx
RUN docker-php-ext-install xml
RUN CFLAGS="-I/usr/src/php" docker-php-ext-install xmlreader
RUN docker-php-ext-install xmlrpc
RUN docker-php-ext-install xmlwriter
RUN docker-php-ext-install xsl
RUN docker-php-ext-install zip
RUN docker-php-ext-install bcmath
RUN docker-php-ext-install imagick
