### Use a JDK image as a base
FROM eclipse-temurin:21-jdk-jammy
MAINTAINER alrhajhibank.com
LABEL version="1.0.0"
LABEL description="For build report service image"
LABEL author="Abdalrhman ALkraien"

# Install freetype and fonts
RUN apt-get update

RUN apt-get install -y --no-install-recommends wget

RUN apt-get install -y --no-install-recommends cabextract

RUN apt-get install -y --no-install-recommends fontconfig

RUN apt-get install -y --no-install-recommends libfreetype6

RUN apt-get install -y --no-install-recommends libx11-6

RUN apt-get install -y --no-install-recommends debconf


RUN sed -i.bak '/^deb / s/$/ contrib/' /etc/apt/sources.list
RUN apt-get update; apt-get install -y ttf-mscorefonts-installer fontconfig

RUN apt-get clean

RUN rm -rf /var/lib/apt/lists/*

COPY target/arb-report-0.0.1-SNAPSHOT.jar /app.jar

RUN sh -c 'touch /app.jar'

ENTRYPOINT ["java","-XX:+UnlockExperimentalVMOptions","-XX:+UseContainerSupport","-XX:MaxRAMPercentage=75.0","-XX:+UseG1GC","-jar", "/app.jar"]