FROM openjdk:8-alpine

RUN apk update && apk upgrade && apk add git bash
RUN git clone https://github.com/pxb1988/dex2jar.git /tmp/dex2jar && \
    cd /tmp/dex2jar && \
    git checkout d7a86110baba3f845973017021fb10664b1b90d2 && \
    ./gradlew && \
    unzip -d /opt/ dex-tools/build/distributions/dex-tools-2.1-SNAPSHOT.zip && \
    cd / && rm -rf /tmp/dex2jar
RUN mkdir /work
WORKDIR /work

ENV PATH="${PATH}:/opt/dex-tools-2.1-SNAPSHOT"

ENTRYPOINT ["/opt/dex-tools-2.1-SNAPSHOT/d2j-dex2jar.sh"]
CMD ["-h"]

