FROM ubuntu
MAINTAINER abc@gmail.com
RUN apt-get update
RUN apt-get install maven -y
WORKDIR /app
COPY . .
RUN mvn clean package
