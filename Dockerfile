FROM jetty:11.0.6-jre11
ARG COMETD_VERSION=7.0.4
ENV COMETD_DIRNAME=cometd-$COMETD_VERSION
ENV COMETD_ARCHIVE=$COMETD_DIRNAME-distribution.tar.gz
ENV COMETD_URL=https://download.cometd.org/$COMETD_ARCHIVE
RUN wget -q $COMETD_URL && \
    tar zxvf $COMETD_ARCHIVE $COMETD_DIRNAME/cometd-demo/target/cometd-demo-$COMETD_VERSION.war > \
        /var/lib/jetty/webapps/root.war && \
    rm $COMETD_ARCHIVE
