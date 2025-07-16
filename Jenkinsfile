pipeline {
    agent { label 'AGENT-1' }
    environment {
        PROJECT = 'Expense'
        USER = 'Sri'
    }
    options {
        disableConcurrentBuilds()
        timeout(time: 5, unit: 'SECONDS')
    }
    // parameters{
    //     string(name: 'PERSON', defaultValue: 'Sri', description: 'who should I say hello to?')
    //     text(name: 'BIOGRAPHY', defaultValue: '', description: 'Enter some info about person')
    //     booleanParam(name: 'TOGGLE', defaultValue: true, description: 'Toggle this value')
    //     choice(name: 'CHOICE', choice: ['one', 'two', 'three'], description: 'pick something')
    //     password(name: 'PASSWORD', defaultValue: 'SECRET', description: 'Enter a password')
    // }
    stages {
        stage ('Build') {
            steps {
                script {
                    sh """
                        echo "Hello this is build stage"
                        echo "Project: $PROJECT"
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