FROM eawsy/aws-lambda-go-shim:latest

RUN true \
  && yum -q -e 0 -y update || true \
  && yum -q -e 0 -y install aws-cli git || true \
  && yum -q -e 0 -y clean all \

RUN rm -rf /shim/pack

COPY ./pack.bash /shim/pack
