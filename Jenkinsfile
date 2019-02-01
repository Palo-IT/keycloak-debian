node{

    stage('Clone sources') {
        git url: 'git@github.com:Palo-IT/keycloak-debian.git'
    }

    stage('Build the Debian package'){
        sh './mvnw clean package'
    }
    stage('Deploy to repository'){
        def pom = readMavenPom file: 'pom.xml'
        def version = pom.version

        def gitProps = readProperties file: 'target/classes/git.properties'
        def commitId = gitProps['git.commit.id.abbrev']

        sh "scp -i /var/lib/jenkins/.ssh/id_rsa target/keycloak-${version}-${commitId}.deb repository:/tmp"
        sh "ssh -i /var/lib/jenkins/.ssh/id_rsa repository sudo reprepro --ask-passphrase -Vb /var/www/deb-repository includedeb squeeze /tmp/keycloak-${version}-${commitId}.deb"
    }
    stage('Install package on Drive UI host'){
        sh 'ssh -i /var/lib/jenkins/.ssh/id_rsa drive-ui sudo apt-get clean'
        sh 'ssh -i /var/lib/jenkins/.ssh/id_rsa drive-ui sudo apt-get install keycloak -y --allow-unauthenticated'
    }

}