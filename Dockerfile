
FROM openjdk:21
# WORKDIR /app
# COPY --from=build /app/build/libs/app.jar /app/app.jar

# Expose the application port
EXPOSE 8081
ADD build/libs/*.jar app.jar

# Set environment variables
# ENV SPRING_APPLICATION_JSON='{"spring":{"application":{"name":"mealrecommendation"}}}'

# Run the application
ENTRYPOINT ["java", "-jar", "app.jar"]