pipeline {
    agent any
    stages {
        stage('git checkout'){
            steps {
            git credentialsId: 'github', url: 'https://github.com/suni4478/onlinemarket.git'
            }
        }
        stage('maven build'){
            steps {
            sh "mvn clean package"
            }
        }
        stage('upload artifact to nexus'){
            steps {
                 def mavenPom = readMavenPom file:'onlinemarket/pom.xml'
                 def nexusRepoName = mavenPom.version.endsWith("SNAPSHOT") ? "sunil-snapshot-repo" : "sunil-repo"
                 nexusArtifactUploader artifacts: [[artifactId: 'onlinebookstore', classifier: '', file: 'onlinemarket_deploy/target/onlinebookstore-0.0.1.war', type: 'war']],
                 credentialsId: 'nexus',
            }
        }
    }
}
    
