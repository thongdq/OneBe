pipeline {
    agent any

    tools {
        jdk 'kdj17'
    }

    stages {

        stage('Build'){
            steps {
                sh 'mvn clean install -DskipTests'
            }
        }

        stage('Test'){
            steps{
                sh 'mvn test'
            }
        }

        stage('Deploy') {
            steps {
                sh 'echo "deploying"'
            }
        }
    }
}