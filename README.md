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

Docker with profile https://www.baeldung.com/spring-boot-docker-start-with-profile

---
kubernetes
- run pv first: kubectl apply -f pv.yaml
    + delete pv second: kubectl delete pv
- run pvc second: kubectl apply -f pvc.yaml -n=<my-namespace>
    + + delete pvc first: kubectl delete pvc
- run heml: helm install onebe . --namespace=<my-namespace>
- uninstall helm: helm uninstall onebe --namespace=<my-namespace>
- port forward:  kubectl port-forward onebe-service 8082:8081
