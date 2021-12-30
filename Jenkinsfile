@Library('sampleSharedLib') _
  pipeline{
    agent any
    parameters{
      string(name:'repoUrl',defaultValue:'',description:'Repository Url')
    }
    stages{
      stage("Getting Repo"){
        steps{
          jenkinsJava params.repoUrl
        }
      }
    }  
  }

