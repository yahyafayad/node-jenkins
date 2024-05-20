
pipeline {
    agent any

    environment {
        AWS_ACCESS_KEY_ID = credentials('fayad')
        AWS_SECRET_ACCESS_KEY = credentials('fayad2')
        AWS_REGION = 'eu-west-1'
        TF_VAR_key_name = 'mar-jenkins'
    }

    stages {
        stage('Terraform Init') {
            steps {
                script {
                    sh 'terraform init'
                }
            }
        }

        stage('Terraform Apply') {
            steps {
                script {
                    sh 'terraform apply --auto-approve'
                }
            }
        }
        //  stage('check ssh') {
        //      steps {

        //         sshagent(['ssh-id']) {
        //                sh "ssh -o StrictHostKeyChecking=no ubuntu@54.72.157.245 echo hello"

        //         }
        //     }
        // }

        stage('Run Ansible Playbook') {
            steps {
                sshagent(['ssh-id']) {
                     sh "ansible-playbook -i inventory.nginx.yaml"

                }
            }
        }
    }

    // post {
    //     failure {
    //         sh 'terraform destroy --auto-approve'
        // }

    // }
}
