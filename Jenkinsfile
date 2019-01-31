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
    }

}