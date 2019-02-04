FROM lachlanevenson/k8s-kubectl

RUN apk add gettext libintl
RUN mv /usr/bin/envsubst /usr/local/bin/envsubst

ENTRYPOINT []
