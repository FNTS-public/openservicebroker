FROM ghcr.io/fnts-public/unipipe-service-broker:v0.0.3

RUN addgroup -gid 3000 osb
RUN adduser --disabled-password --shell / --uid 1000 osb-user --gid 3000

RUN chown -R 1000:3000 /app

USER 1000
