pipeline {
    agent {
        docker { 
            dockerfile true
        }
    }
    stages {
        stage('Build') {
            steps {
                sh '''
                  ls -alh mk
                  pwd
                  make -C $PWD/mk B=$PWD/build/mk
                  export mk=$PWD/build/mk

                  touch /tmp/{fiasco,bootstrap,moe,sigma0,l4re,hello}
                  make -C $mk grub2iso E=hello MODULE_SEARCH_PATH=/tmp
                '''
            }
        }
    }
    post {
        always {
            deleteDir() 
        }
    }
}
