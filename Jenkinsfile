pipeline{
    agent any
    tools {
        maven '3.6.0'
        jdk 'jdk8'
    }
    stages{
        stage('Build the Debian package'){
            steps {
                sh 'mvn clean package'
            }
        }
        stage('Deploy to repository'){
            steps {
                sh 'who am i '
                sh 'scp -i /var/lib/jenkins/.ssh/id_rsa target/keycloak-4.8.3.Final.deb repository:/tmp'
                sh 'ssh -i /var/lib/jenkins/.ssh/id_rsa repository sudo reprepro --ask-passphrase -Vb /var/www/deb-repository includedeb squeeze /tmp/keycloak-4.8.3.Final.deb'
            }
        }
    }

}