node { 
    checkout scm
    docker.image('maven:3.9.2-eclipse-temurin-11').inside('-v /root/.m2:/root/.m2') {
        stage('Build') {
            sh 'mvn -B -DskipTests clean package'
        }
        stage('Test') {
            sh 'mvn test'
        }
        stage('Manual Approval'){
            input(message: 'Lanjutkan ke tahap Deploy?')
        }
        stage('Deploy') {
            sh './jenkins/scripts/deliver.sh'
            withCredentials([usernameColonPassword(credentialsId: 'Heroku', variable: 'PASS')]) {
                sh 'git push https://${PASS}@git.heroku.com/ci-cd-java-app-akhsaul.git master'
            }
            sleep(time:1, unit:"MINUTES")
        }
    } 
}