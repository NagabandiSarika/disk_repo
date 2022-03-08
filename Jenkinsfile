pipeline {
    agent any 
    stages {
        stage('Stage 1') {
            steps {
               checkout([$class: 'GitSCM', branches: [[name: '*/main']], extensions: [], userRemoteConfigs: [[url: 'https://github.com/NagabandiSarika/disk_repo.git']]])
            }
        }
    }
}
