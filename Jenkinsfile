pipeline {
    agent any

    // environment {
    //     JAVA_HOME = tool name: 'jdk21', type: 'jdk'
    // }

    stages {
        stage('Checkout') {
            steps {
                checkout scmGit(branches: [[name: '*/main']], extensions: [], userRemoteConfigs: [[url: 'https://github.com/aninda08/flavorcompass-backend']])
            }
        }

        stage('Build') {
            steps {
                echo 'Building the Spring Boot application...'
                sh './gradlew clean build'
            }
        }

        // stage('Test') {
        //     steps {
        //         echo 'Running tests...'
        //         sh './gradlew test'
        //     }
        // }
    }

    // post {
    //     success {
    //         echo 'Pipeline completed successfully!'
    //     }
    //     failure {
    //         echo 'Pipeline failed!'
    //     }
    // }
}