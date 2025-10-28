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






// pipeline {
//     agent { label 'AGENT-1' }
//     environment {
//         PROJECT = 'Expense'
//         USER = 'Sri'
//         DEPLOY_TO = "production"
//     }
//     options {
//         disableConcurrentBuilds()
//         timeout(time: 60, unit: 'SECONDS')
//     }
//     parameters{
//         string(name: 'PERSON', defaultValue: 'Sri', description: 'who should I say hello to?')
//         text(name: 'BIOGRAPHY', defaultValue: '', description: 'Enter some info about person')
//         booleanParam(name: 'TOGGLE', defaultValue: true, description: 'Toggle this value')
//         choice(name: 'CHOICE', choices: ['one', 'two', 'three'], description: 'pick something')
//         password(name: 'PASSWORD', defaultValue: 'SECRET', description: 'Enter a password')
//     }
//     stages {
//         stage ('Build') {
//             steps {
//                 script {
//                     sh """
//                         echo "Hello this is build stage"
//                         echo "A is coming"
//                         echo "Project: $PROJECT"
//                         echo "Hello ${params.PERSON}"
//                         echo "Biography: ${params.BIOGRAPHY}"
//                         echo "Toggle: ${params.TOGGLE}"
//                         echo "Choice: ${params.CHOICE}"
//                         echo "Password: ${params.PASSOWRD}"
//                     """
//                 }
//             }
//         }

//         stage ('Test') {
//             steps {
//                 script {
//                     sh """ 
//                         echo "Hello this is test stage"
//                     """
//                 }
//             }
//         }

//         stage ('Deploy') {
//             // input {
//             //     message "Should we continue?"
//             //     ok "Yes, we should."
//             //     submitter "alice,bob"
//             //     parameters {
//             //         string(name: 'PERSON', defaultValue: 'Mr Jenkins', description: 'Who should I say hello to?')
//             //     }
//             // }
//             when { 
//                 environment name: 'DEPLOY_TO', value: 'production'
//             }
//             steps {
//                 script {
//                     sh """
//                         echo "Hello this is deploy stage"
//                     """
//                 }
//             }
//         }
//         stage ('Parallel Stages') {
//             parallel {
//                 stage('STAGE-1') {
//                     steps {
//                         script {
//                             sh """
//                                 echo "Hello Vinni this is Stage-1"
//                                 sleep 15
//                             """
//                         }
//                     }
//                 }
//                 stage('STAGE-2') {
//                     steps {
//                         script {
//                             sh """
//                                 echo "Hello Vinni this is Stage-2"
//                                 sleep 15
//                             """
//                         }
//                     }
//                 }
//             }
//         }
//     }

//     post {
//         always {
//             echo "I will always say hello again"
//             deleteDir()
//         }
//         failure {
//             echo "I will run when pipeline is failed"
//         }
//         success {
//             echo "I will run when pipeline is success"
//         }
//     }
// }