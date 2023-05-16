FROM eclipse-temurin:17-jdk-alpine
VOLUME /tmp
COPY out/artifacts/demo_jar/demo.jar app.jar
ENTRYPOINT ["java","-jar","/app.jar"]