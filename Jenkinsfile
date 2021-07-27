pipeline {
    agent {
        docker { image 'debuggerpls/centos7-mk:latest' }
    }
    stages {
        stage('Build') {
            steps {
                sh '''
                  curl -O https://github.com/kernkonzept/mk/archive/refs/heads/master.zip
                  unzip master.zip
                  mv -r mk-master mk
                  make -C $PWD/mk B=$PWD/build/mk
                  export mk=$PWD/build/mk

                  touch /tmp/{fiasco,bootstrap,moe,sigma0,l4re,hello}
                  make -C $mk grub2iso E=hello MODULE_SEARCH_PATH=/tmp
                '''
            }
        }
    }
}
