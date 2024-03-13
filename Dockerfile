FROM confluentinc/cp-kafka-connect-base:7.3.0

ENV MYSQL_DRIVER_VERSION 8.0.13

USER root

RUN curl -k -SL "https://dev.mysql.com/get/Downloads/Connector-J/mysql-connector-java-${MYSQL_DRIVER_VERSION}.tar.gz" \
     | tar -xzf - -C /usr/share/java/kafka/ --strip-components=1 mysql-connector-java-8.0.13/mysql-connector-java-${MYSQL_DRIVER_VERSION}.jar