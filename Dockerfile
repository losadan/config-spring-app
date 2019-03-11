FROM openjdk:8-stretch

EXPOSE 8080

COPY target/*.jar /home/config-spring-app.jar

ENTRYPOINT ["java", "-jar", "-Dspring.profiles.active=staging", "/home/config-spring-app.jar"]