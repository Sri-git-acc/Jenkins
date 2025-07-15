pipeline {
    agent { label 'AGENT-1' }
    stages {
        stage ('Build') {
            steps {
                script {
                    sh """
                        echo "Hello this is build stage"
                    """
                }
            }
        }

        stage ('Test') {
            steps {
                script {
                    sh """ 
                        echo "Hello this is test stage"
                    """
                }
            }
        }

        stage ('Deploy') {
            steps {
                script {
                    sh """
                        echo "Hello this is deploy stage"
                    """
                }
            }
        }
    }

    post {
        always {
            echo "I will always say hello again"
        }
        failure {
            echo "I will run when pipeline is failed"
        }
        success {
            echo "I will run when pipeline is success"
        }
    }
}