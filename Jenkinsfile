pipeline {
    agent any
    stages {
    stage('git clone') {
            steps {
               git branch: 'main', url: 'https://github.com/aayushknoldus03/finalcapestone'
            }
        }
        stage('python version'){
        steps{
        sh 'python3 --version'
        }
       }
         stage('Building Artifact') {
            steps {
                sh 'tar -cvf app.tar app.py '
            }
        }
        stage('BUilding result') {
            steps {
                sh 'echo build successfull'
            }
        }
         
    }
}
