FROM alpine:3.12

ENV prest_version=1.0.1
RUN set -eux \
  ; wget -O- https://github.com/prest/prest/releases/download/v${prest_version}/prest_${prest_version}_linux_amd64.tar.gz \
    | tar -C / -zxf - prestd \
  ; wget https://raw.githubusercontent.com/prest/prest/v${prest_version}/cmd/prestd/prest.toml

ENTRYPOINT ["/prestd"]