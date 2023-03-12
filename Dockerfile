FROM openjdk:8u265-jre-slim as prod
COPY target/*.jar /root/spring.jar
RUN ln -snf /usr/share/zoneinfo/Asia/Shanghai /etc/localtime && echo Asia/Shanghai > /etc/timezone
CMD java -jar -Xmx512m /root/spring.jar 

