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
            def pom = readMavenPom file: 'pom.xml'
            def gitProps = readProperties file: 'target/classes/git.properties'

            steps {
                sh 'scp -i /var/lib/jenkins/.ssh/id_rsa target/keycloak-${pom.version}-${gitProps.git.commit.id.abbrev}.deb repository:/tmp'
                sh 'ssh -i /var/lib/jenkins/.ssh/id_rsa repository sudo reprepro --ask-passphrase -Vb /var/www/deb-repository includedeb squeeze /tmp/keycloak-${pom.version}-${gitProps.git.commit.id.abbrev}.deb'
            }
        }
        stage('Install package on Drive UI host'){
            steps{
                sh 'ssh -i /var/lib/jenkins/.ssh/id_rsa drive-ui sudo apt-get clean'
                sh 'ssh -i /var/lib/jenkins/.ssh/id_rsa drive-ui sudo apt-get install --reinstall keycloak -y --allow-unauthenticated'
            }
        }
    }

}