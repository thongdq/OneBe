FROM openjdk:17-jdk
LABEL mentainer="thongquocdo@gmail.com"
WORKDIR /app
COPY target/projectone-0.0.1-SNAPSHOT.jar /app/projectone-be.jar
ENTRYPOINT ["java", "-jar", "projectone-be.jar"]