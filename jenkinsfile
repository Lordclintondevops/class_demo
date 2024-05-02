pipeline{
    agent any
    tools {
        terraform 'terraform-18'
    }
    stages{
        stage('Git Checkout'){
            steps{
               git branch: 'main', url: 'https://github.com/Lordclintondevops/class_demo.git'
            }
        }
        stage('Terraform init'){
            steps{
                sh 'terraform init'
            }
        }
        stage('Terraform plan'){
            steps{
                sh 'terraform plan'
            }
        } 
        stage('Terraform apply'){
            steps{
                sh 'terraform apply -auto-approve'
            }
        }
}
}
