FROM java:8-jdk 

RUN mkdir /odl

WORKDIR /odl

RUN wget https://nexus.opendaylight.org/content/repositories/opendaylight.release/org/opendaylight/integration/karaf/0.8.4/karaf-0.8.4.tar.gz && \
    tar -xvzf karaf-0.8.4.tar.gz



ENTRYPOINT "/odl/karaf-0.8.4/bin/karaf"

EXPOSE 8101 8181 6633