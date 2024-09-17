#base image
FROM openjdk:17-jdk-alpine

#working directory
WORKDIR /app

#copy code from host to container
COPY src/Main.java /app/Main.java

#compile
RUN javac Main.java

#run
CMD ["java","Main"]
