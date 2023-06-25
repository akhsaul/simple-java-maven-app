node { 
    checkout scm
    docker.image('maven:3.9.2-eclipse-temurin-11').inside('-v /root/.m2:/root/.m2') {
        stage('Build') {
            sh 'mvn -B -DskipTests clean package'
        }
        stage('Test') {
            sh 'mvn test'
        }
        stage('Deploy') {
            sh './jenkins/scripts/deliver.sh'
            sleep(time:1, unit:"MINUTES")
        }
    } 
}