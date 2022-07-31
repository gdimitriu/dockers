FROM adoptopenjdk/openjdk13:jdk-13.0.2_8-ubuntu-slim AS build
RUN apt update && apt-get install -y maven && apt-get install -y git
RUN mkdir /builder
WORKDIR /builder
RUN git clone https://github.com/gdimitriu/kafka_app.git --config core.autocrlf=input
WORKDIR /builder/kafka_app/kafka_app
RUN mvn clean package

FROM adoptopenjdk/openjdk13:jdk-13.0.2_8-ubuntu-slim
RUN mkdir /opt/app
COPY --from=build /builder/kafka_app/kafka_app/target/kafka_app-1.0-SNAPSHOT.jar /opt/app/kafka_app.jar

WORKDIR /opt/app
EXPOSE 1080
CMD ["java","-jar", "/opt/app/kafka_app.jar"] 
