pipeline {
    agent {
        docker { image 'debuggerpls/centos7-mk:latest' }
    }
    stages {
        stage('Test') {
            steps {
                sh 'jq --help'
            }
        }
    }
}
