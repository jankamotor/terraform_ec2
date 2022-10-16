pipeline {
  agent { label 'terraform-home'}
  options {
    skipDefaultCheckout(true)
  }
  stages{
    stage('clean workspace-1') {
      steps {
        cleanWs()
      }
    }
    stage('checkout') {
      steps {
        checkout scm
      }
    }
    stage('terraform') {
      steps {
        dir('/home/jrivas/proyects/terraform_ec2') {
            sh 'terraform apply --auto-approve'
        }
        
      }
    }
  }
  post {
    always {
      cleanWs()
    }
  }
}