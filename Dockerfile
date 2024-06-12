
FROM openjdk:8-jdk-alpine


WORKDIR /app


COPY . .


RUN chmod +x ./mvnw


RUN ./mvnw package


EXPOSE 8080


CMD ["sh", "-c", "java -jar target/praksa2022-0.0.1-SNAPSHOT.jar --server.port=${PORT}"]
