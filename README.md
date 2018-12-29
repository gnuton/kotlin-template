[![Build Status](https://travis-ci.org/gnuton/kotlin-template.svg?branch=master)](https://github.com/gnuton/kotlin-template)

# Stupid spring boot template
Kind of opinonated template using the following technologies
* Kotlin
* Gradle
* Spring boot

## Build the fat jar

```bash
./gradlew build
```

### Run the jar
```bash
./gradlew bootRun
```

### Build docker container
```bash
docker build -t template
```

### run docker container
```bash
docker run template
```
