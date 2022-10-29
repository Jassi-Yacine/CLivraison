pipeline {
    agent any
    stages {
        stage ('Git') {
             steps {
                script{
                    checkout([$class: 'GitSCM', branches: [[name:'*/yacine']],
                        userRemoteConfigs: [[
                            url : 'https://github.com/Jassi-Yacine/CLivraison.git',
                            credentialsId:'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'
                        ]]])
                }
           
        }
        }
    }
}