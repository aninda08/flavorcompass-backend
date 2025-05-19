FROM eclipse-temurin:21-jdk-jammy
EXPOSE 8081
ADD build/libs/mealrecommendation-0.0.1-SNAPSHOT.jar app.jar
ADD entrypoint.sh entrypoint.sh
# ENTRYPOINT ["java","-jar","app.jar"]
CMD ["./entrypoint.sh"]
