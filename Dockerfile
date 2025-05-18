
# FROM openjdk:21
# WORKDIR /app
# COPY --from=build /app/build/libs/app.jar /app/app.jar

# Expose the application port
# EXPOSE 8081
# ADD build/libs/*.jar app.jar

# Set environment variables
# ENV SPRING_APPLICATION_JSON='{"spring":{"application":{"name":"mealrecommendation"}}}'

# Run the application
# ENTRYPOINT ["java", "-jar", "app.jar"]

FROM openjdk:21-jdk-slim
# VOLUME /tmp
EXPOSE 8081
ADD build/libs/mealrecommendation-0.0.1-SNAPSHOT.jar app.jar
ENTRYPOINT ["java","-jar","/app.jar"]
