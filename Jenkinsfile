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
                sh 'scp target/keycloak-4.8.3.Final.deb repository:/tmp'
                sh 'ssh repository reprepro --ask-passphrase -Vb /var/www/deb-repository includedeb squeeze /tmp/keycloak-4.8.3.Final.deb'
            }
        }
    }

}