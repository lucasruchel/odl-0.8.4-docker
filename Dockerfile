FROM openjdk:8u232-jdk-stretch

RUN mkdir /odl

WORKDIR /odl

RUN wget https://nexus.opendaylight.org/content/repositories/opendaylight.release/org/opendaylight/integration/karaf/0.8.4/karaf-0.8.4.tar.gz && \
    tar -xzf karaf-0.8.4.tar.gz && \
    rm karaf-0.8.4.tar.gz



ENTRYPOINT "/odl/karaf-0.8.4/bin/karaf"

CMD ["server"]

EXPOSE 8101 8181 6633 6640 6653 9876
