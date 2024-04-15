pipeline {
    agent any
    environment {
        DOCKER_IMAGE = 'maven:3.9.6-eclipse-temurin-17-alpine'
    }
    stages {
        stage('Checkout') {
            steps {
                checkout scm
            }
        }
        stage('Build') {
            agent {
                docker {
                    image DOCKER_IMAGE
                    reuseNode true
                }
            }
            steps {
                sh 'mvn --version'
            }
        }
    }
}
