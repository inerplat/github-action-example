FROM eclipse-temurin:11-jdk AS builder

RUN apt update && apt install lib32z1 -y

WORKDIR /build
COPY . .

RUN chmod +x gradlew
RUN ./gradlew build -x test


FROM eclipse-temurin:11-jre

WORKDIR /run

COPY  --from=builder /build/build/libs/*.jar app.jar

ENTRYPOINT ["java","-jar","app.jar"]
