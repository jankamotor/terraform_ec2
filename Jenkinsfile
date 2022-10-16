pipeline {
  agent { label 'terraform-home'}
  options {
    skipDefaultCheckout(true)
  }
  stages{
    stage('Clean workspace-1...') {
      steps {
        cleanWs()
      }
    }
    stage('Checkout scm...') {
      steps {
        checkout scm
      }
    }

    stage('terraform plan...') {
      steps {
        dir('/home/jrivas/proyects/terraform_ec2') {
            sh 'terraform plan'
        }
        
      }
    }

    stage('terraform apply...') {
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