pipeline{
  agent any
  stages{
    stage("maven build"){
      when{
        branch "master"
        steps{
              sh "mvn clean package"
    }
      }
      stage("deploy to dev"){
      when{
        branch "dev"
        steps{
             echo "deploy to development .... "
    }
      }
      }
    }
  }
    
