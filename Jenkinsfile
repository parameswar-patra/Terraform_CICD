pipeline {
    agent any

    parameters {
        choice(
            name: 'ACTION',
            choices: ['apply', 'destroy'],
            description: 'Choose Terraform action'
        )
    }

    stages {

        // stage('Git Clone') {
        //     steps {
        //         git branch: 'main',
        //             url: 'https://github.com/parameswar-patra/Terraform_CICD.git'
        //     }
        // }

        stage('Terraform Init') {
            steps {
                sh 'terraform init'
            }
        }

        stage('Terraform Plan') {
            when {
                expression { params.ACTION == 'apply' }
            }
            steps {
                sh 'terraform plan'
            }
        }

        stage('Approve Destroy') {
            when {
                expression { params.ACTION == 'destroy' }
            }
            steps {
                input message: 'Are you sure you want to destroy the infrastructure?'
            }
        }

        stage('Terraform Apply / Destroy') {
            steps {
                sh "terraform ${params.ACTION} -auto-approve"
                echo "Terraform ${params.ACTION} completed successfully"
            }
        }
    }

    post {
        success {
            echo "Pipeline completed successfully"
        }
        failure {
            echo "Pipeline failed"
        }
        always {
            echo "Pipeline execution finished"
        }
    }
}
