FROM openjdk:16-slim AS dev

ENV LANG C.UTF-8
ENV TZ Asia/Tokyo
ENV SRC /usr/local/src
ENV KOTLIN_VERSION 1.4.32
ENV PATH /usr/local/kotlin-native/bin:$PATH

RUN apt-get update -qq && apt-get install -y --no-install-recommends \
    wget && \
    wget --no-check-certificate https://github.com/JetBrains/kotlin/releases/download/v$KOTLIN_VERSION/kotlin-native-linux-$KOTLIN_VERSION.tar.gz && \
    mkdir /usr/local/kotlin-native && \
    tar -zxvf kotlin-native-linux-$KOTLIN_VERSION.tar.gz -C /usr/local/kotlin-native --strip-components 1 && \
    apt-get clean -y && \
    rm -rf /var/lib/apt/lists/* && \
    rm kotlin-native-linux-$KOTLIN_VERSION.tar.gz && \
    :

CMD ["/bin/bash"]