pipeline {
    agent any
    stages {
        stage('Build') {
            steps {
                script {
                    sh """
                        echo "Hello This is Build stage"
                    """
                }
            }
        }
        stage('Test') {
            steps {
                script {
                    sh """
                        echo "Hello This is test stage"
                    """
                }
            }
        }
    }
}
