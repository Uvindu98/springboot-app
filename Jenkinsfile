pipeline {
    agent any
    tools{
        gradle '8.1.1'
    }
    stages{
        stage('Build'){
            steps{
                checkout([$class: 'GitSCM', branches: [[name: '*/main']], extensions: [], userRemoteConfigs: [[url: 'https://github.com/Uvindu98/devops-automation.git']]])

            }
        }
        stage('Build docker image'){
            steps{
                script{
                    bat 'docker build -t myapp .'
                }
            }
        }
        stage('Push image to Hub'){
            steps{
                script{

                   bat 'docker login -u uvindu098 -p dckr_pat_8o5QucdDayIPdLR5lvFA86cMHIc'
                   bat 'docker tag myapp uvindu098/devops-integration:myapp'
                   bat 'docker push uvindu098/devops-integration:myapp'
                }
            }
        }

    }
}
