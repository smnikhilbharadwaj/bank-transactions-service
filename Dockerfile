FROM maven:3.6.1-jdk-8 AS build
COPY src /usr/concur/banktransactionservice/src
COPY pom.xml /usr/concur/banktransactionservice
RUN mvn -f /usr/concur/banktransactionservice/pom.xml clean compile package
EXPOSE 8080
ENTRYPOINT ["java","-Dspring.datasource.url=jdbc:mysql://mysqldb:3306/concur?useSSL=false&allowPublicKeyRetrieval=true","-jar","/usr/concur/banktransactionservice/target/bank-account-service-1.0.0.jar"]