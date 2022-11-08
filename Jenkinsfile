pipeline {
    agent any
    stages {
        stage ('Git') {
             steps {
                script{
                    checkout([$class: 'GitSCM', branches: [[name:'*/yacine']],
                        userRemoteConfigs: [[
                            url : 'https://github.com/Jassi-Yacine/CLivraison.git',
                            credentialsId:'e52eab6d-20e1-4494-b944-137c90e7409a'
                        ]]])
                }
           
        }
        }

          stage ('BUILD') {
             steps {
            sh 'ansible-playbook Ansible/build.yml -i Anisble/inventory/host.yml'
        }
        }
        
        stage ('DOCKER') {
             steps {
            sh 'ansible-playbook Ansible/docker.yml -i Anisble/inventory/host.yml'
        }
        }
        
        stage ('PUSH') {
             steps {
            sh 'ansible-playbook Ansible/docker-registry.yml -i Anisble/inventory/host.yml'
        }
        }
        
        stage ('DEPLOY') {
             steps {
            sh 'kubectl create -f deployment.yml'
            sh 'kubectl create -f service.yml'
        }
        }
    }
}
