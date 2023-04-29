FROM maven:3.8.5-openjdk-17
LABEL mentainer="thongquocdo@gmail.com"
WORKDIR /app
COPY /target/projectone-0.0.1-SNAPSHOT.jar .
ENTRYPOINT ["java", "-jar", "projectone-0.0.1-SNAPSHOT.jar"]