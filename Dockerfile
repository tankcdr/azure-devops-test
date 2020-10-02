FROM openjdk:11
RUN addgroup spring && adduser --no-create-home --disabled-password --gecos ""  --ingroup spring spring
USER spring:spring
ARG JAR_FILE=target/*.jar
COPY ${JAR_FILE} app.jar
ENTRYPOINT ["java","-jar","/app.jar"]
