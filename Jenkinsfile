node { 
    agent{
        docker {
            image '3.9.2-eclipse-temurin-11'
            args '-v /root/.m2:/root/.m2'
        }
    }
    stage('Build') { 
        sh 'mvn -B -DskipTests clean package'
    }
}