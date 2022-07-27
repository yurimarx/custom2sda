ARG IMAGE=intersystemsdc/irishealth-community
FROM $IMAGE

USER root   
        
WORKDIR /opt/user
RUN chown ${ISC_PACKAGE_MGRUSER}:${ISC_PACKAGE_IRISGROUP} /opt/user
USER ${ISC_PACKAGE_MGRUSER}

COPY  Installer.cls Installer.cls
COPY  module.xml module.xml
COPY  src src
COPY data data
COPY sdaschema sdaschema
COPY iris.script /tmp/iris.script

USER root
RUN chmod 777 -R /opt/user/sdaschema
RUN chmod 777 -R /opt/user/data

USER ${ISC_PACKAGE_MGRUSER}
RUN iris start IRIS \
	&& iris session IRIS < /tmp/iris.script \
    && iris stop IRIS quietly
