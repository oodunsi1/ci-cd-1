pipeline {
    agent any

    environment {
        AWS_DEFAULT_REGION = 'us-east-1'  // Set this to your AWS region
        AWS_CREDENTIALS = credentials('aws')  // ID for configured AWS credentials in Jenkins
    }

    stages {
        stage('List S3 Buckets') {
            steps {
                withCredentials([[
                    $class: 'AmazonWebServicesCredentialsBinding', 
                    credentialsId: 'aws'  // Use your AWS credentials ID
                ]]) {
                    sh '''
                        echo "Listing all S3 buckets in the AWS account:"
                        aws s3 ls
                        terraform init
                    '''
                }
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

