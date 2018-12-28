## Builder section
ARG VERSION=8u151
ARG JAR_FILE=/src/build/libs/template-0.0.1-SNAPSHOT.jar
FROM openjdk:${VERSION}-jdk as BUILD
COPY . /src
WORKDIR /src
RUN ./gradlew --no-daemon build

## Runtime section
FROM openjdk:${VERSION}-jre
COPY --from=${JAR_FILE}  /bin/runner/run.jar
WORKDIR /bin/runner
CMD ["java","-jar","run.jar"]