FROM anapsix/alpine-java:8_server-jre_unlimited

MAINTAINER 1556316829@qq.com

RUN mkdir -p /blade/admin

WORKDIR /blade/admin

EXPOSE 80

ADD ./target/test-0.0.1-SNAPSHOT.jar ./app.jar

ENTRYPOINT ["java", "-Djava.security.egd=file:/dev/./urandom", "-jar", "app.jar"]

CMD ["--spring.profiles.active=default"]
