FROM gradle:7-jdk11 AS builder

WORKDIR /build
COPY . .

RUN gradle build -x test


FROM eclipse-temurin:11-jre

WORKDIR /run

COPY  --from=builder /build/build/libs/*.jar app.jar

ENTRYPOINT ["java","-jar","app.jar"]
