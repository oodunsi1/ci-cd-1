pipeline {
    agent any

    environment {
        AWS_DEFAULT_REGION = 'us-east-1'  // Set this to your AWS region
        AWS_CREDENTIALS = credentials('JENKINS-AWS')  // ID for configured AWS credentials in Jenkins
    }

    stages {
        stage('List S3 Buckets') {
            steps {
                withCredentials([[
                    $class: 'AmazonWebServicesCredentialsBinding', 
                    credentialsId: 'JENKINS-AWS'  // Use your AWS credentials ID
                ]]) {
                    sh '''
                        echo "Listing all S3 buckets in the AWS account:"
                        aws s3 ls
                    '''
                }
            }
        }

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

