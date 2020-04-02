FROM openjdk:11.0.6-jre

RUN mkdir /odl

WORKDIR /odl

RUN wget https://nexus.opendaylight.org/content/repositories/opendaylight.release/org/opendaylight/integration/opendaylight/0.12.0/opendaylight-0.12.0.tar.gz && \
    tar -xzf opendaylight-0.12.0.tar.gz && \
    rm opendaylight-0.12.0.tar.gz 



ENTRYPOINT "/odl/opendaylight-0.12.0/bin/karaf"

CMD ["server"]

EXPOSE 8101 8181 6633 6640 6653 9876
