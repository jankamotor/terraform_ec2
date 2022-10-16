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
        sh 'terraform apply --auto-approve /home/jrivas/proyects/terraform_ec2/main.tf'
      }
    }
  }
  post {
    always {
      cleanWs()
    }
  }
}