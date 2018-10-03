FROM debian:9.5-slim
WORKDIR /c2/server
RUN apt-get update -qq \
    && apt-get install curl -yqq \
    && curl -s -o c2_community-linux-64 https://raw.githubusercontent.com/blatayue/hodl/master/c2_community-linux-64 \
    && chmod +x /c2/server/c2_community-linux-64
CMD ./c2_community-linux-64 -hostname glacial-spire-34336.herokuapp.com/web -listenport ${PORT}
