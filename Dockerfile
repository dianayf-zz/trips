FROM elixir:1.9-alpine
LABEL maintainer="diana.yermanos@peiky.com" \
      version="1.0"
ENV PHX_VERSION=1.4.8
ENV MIX_ENV=dev
WORKDIR /usr/src/myapp
RUN apk add git
RUN apk add --update npm inotify-tools \
    && rm -fr /var/cache/apk/*

RUN mix local.hex --force \
    && mix local.rebar --force \
    && mix archive.install hex phx_new $PHX_VERSION --force

COPY mix.exs mix.lock start.sh ./
RUN chmod +x /usr/src/myapp/start.sh
ENTRYPOINT ["/usr/src/myapp/start.sh"]
