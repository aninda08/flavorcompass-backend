pipeline {
    agent any

    environment {
        JAVA_HOME = tool name: 'jdk21', type: 'jdk'
    }

    stages {
        stage('Checkout') {
            steps {
                git branch: 'main', url: 'https://github.com/aninda08/flavorcompass-backend.git'
            }
        }

        stage('Build') {
            steps {
                echo 'Building the Spring Boot application...'
                sh './gradlew build -x test'
            }
        }

        stage('Test') {
            steps {
                echo 'Running tests...'
                sh './gradlew test'
            }
        }
    }

    post {
        success {
            echo 'Pipeline completed successfully!'
        }
        failure {
            echo 'Pipeline failed!'
        }
    }
}