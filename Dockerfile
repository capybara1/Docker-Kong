FROM kong:2.0
LABEL org.label-schema.schema-version="1.0" \
      org.label-schema.version="$VERSION" \
      org.label-schema.maintainer="https://github.com/capybara1/" \
      org.label-schema.url="https://github.com/capybara1/Docker-Kong" \
      org.label-schema.name="nodered" \
      org.label-schema.license="MIT" \
      org.label-schema.vcs-url="https://github.com/capybara1/Docker-Kong" \
      org.label-schema.vcs-ref="$VCS_REF" \
      org.label-schema.build-date="$BUILD_DATE" \
      org.label-schema.dockerfile="/Dockerfile"
USER root
RUN apk add --no-cache luarocks \
 && luarocks install https://github.com/capybara1/kong-token-introspection/releases/download/2020-05-22-05-02-24/access-token-introspection-1.0.0-0.all.rock
USER kong
