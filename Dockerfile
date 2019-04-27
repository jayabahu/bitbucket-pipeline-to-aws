FROM alpine:3.9
ENV WEBPACK_VERSION 4.28.3
ENV BOTO_VERSION 1.4.4
ENV YARN_VERSION 1.13.0
# Bash is required for use with BitBucket Pipelines.
# gcc, g++, python, make for building native node modules.
# mailcap is required for more complete /etc/mime.types than default.
RUN\
 apk upgrade --update-cache --available &&\
 apk add nodejs nodejs-npm git gcc g++ make openssh python py-pip bash zip findutils curl gnupg rhash mailcap &&\
 pip install boto3==$BOTO_VERSION &&\
 npm i -g yarn@$YARN_VERSION webpack@$WEBPACK_VERSION &&\
 rm -rf /tmp/npm*
ENTRYPOINT ["/bin/bash", "-l", "-c"]
