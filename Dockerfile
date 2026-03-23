FROM php:8.3-cli

RUN apt-get update && apt-get install -y \
    git \
    unzip \
    && rm -rf /var/lib/apt/lists/*

COPY --from=composer:latest /usr/bin/composer /usr/bin/composer

WORKDIR /app

COPY . .

RUN echo '' >> /root/.bashrc && \
    echo 'if [ ! -d /app/vendor ]; then composer install; fi' >> /root/.bashrc && \
    echo 'echo ""' >> /root/.bashrc && \
    echo 'echo "  #   #  ###  ####  ####     #      ###    ###  ##### #   # "' >> /root/.bashrc && \
    echo 'echo "  #   # #     #     #   #    #     #   #  #       #   ##  # "' >> /root/.bashrc && \
    echo 'echo "  #   #  ###  ###   ####     #     #   #  #  ##   #   # # # "' >> /root/.bashrc && \
    echo 'echo "  #   #     # #     #  #     #     #   #  #   #   #   #  ## "' >> /root/.bashrc && \
    echo 'echo "   ###   ###  ###   #   #    #####  ###    ###  #####  #   # "' >> /root/.bashrc && \
    echo 'echo ""' >> /root/.bashrc && \
    echo 'echo "  User Login Module PHP - Docker"' >> /root/.bashrc && \
    echo 'echo ""' >> /root/.bashrc

CMD ["bash"]