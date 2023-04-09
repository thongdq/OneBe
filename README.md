environment files:
default: all properties in this file also in dev and prod file -> application fail fast if we forget to override properties in a profile-specific configuration.
dev: dev environment
prod: prod environment

use system env
export SPRING_PROFILES_ACTIVE=foo,bar
java -jar profiles-0.0.1-SNAPSHOT.jar

java argument
java -Dspring.profiles.active=foo -jar profiles-0.0.1-SNAPSHOT.jar

maven cmd
mvn spring-boot:run -Dspring-boot.run.profiles=dev,prod

---
