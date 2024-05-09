pipeline {
    agent any
     environment {
        AWS_CREDENTIALS = credentials('JENKINS-AWS') // ID for configured AWS credentials
    }

	stages {
        stage('Checkout') {
            steps {
                git 'https://github.com/oodunsi1/ci-cd-1.git' // Update with the actual GitHub repo URL
            }
        }
        stage('Terraform Init') {
            steps {
                sh 'terraform init'
            }
        }
        stage('Terraform Plan') {
            steps {
                sh 'terraform plan -out=tfplan'
            }
        }
        stage('Terraform Apply') {
            steps {
                input message: 'Do you want to apply the plan?', ok: 'Apply'
                sh 'terraform apply tfplan'
            }
        }
    }
}

