FROM alpine

RUN apk add --no-cache hugo go-task rsync nodejs git
RUN wget -q -O /tmp/pagefind.tar.gz https://github.com/CloudCannon/pagefind/releases/download/v1.3.0/pagefind-v1.3.0-x86_64-unknown-linux-musl.tar.gz \
    && tar -xpf /tmp/pagefind.tar.gz pagefind \
    && mv pagefind /usr/local/bin/pagefind
